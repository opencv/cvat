from xml.sax.saxutils import XMLGenerator
from collections import OrderedDict
from copy import deepcopy

def pairwise(iterable):
    a = iter(iterable)
    return zip(a, a)

class XmlAnnotationWriter:
    def __init__(self, file):
        self.version = "1.1"
        self.file = file
        self.xmlgen = XMLGenerator(self.file, 'utf-8')
        self._level = 0

    def _indent(self, newline = True):
        if newline:
            self.xmlgen.ignorableWhitespace("\n")
        self.xmlgen.ignorableWhitespace("  " * self._level)

    def _add_version(self):
        self._indent()
        self.xmlgen.startElement("version", {})
        self.xmlgen.characters(self.version)
        self.xmlgen.endElement("version")

    def open_root(self):
        self.xmlgen.startDocument()
        self.xmlgen.startElement("annotations", {})
        self._level += 1
        self._add_version()

    def _add_meta(self, meta):
        self._level += 1
        for k, v in meta.items():
            if isinstance(v, OrderedDict):
                self._indent()
                self.xmlgen.startElement(k, {})
                self._add_meta(v)
                self._indent()
                self.xmlgen.endElement(k)
            elif isinstance(v, list):
                self._indent()
                self.xmlgen.startElement(k, {})
                for tup in v:
                    self._add_meta(OrderedDict([tup]))
                self._indent()
                self.xmlgen.endElement(k)
            else:
                self._indent()
                self.xmlgen.startElement(k, {})
                self.xmlgen.characters(v)
                self.xmlgen.endElement(k)
        self._level -= 1

    def add_meta(self, meta):
        self._indent()
        self.xmlgen.startElement("meta", {})
        self._add_meta(meta)
        self._indent()
        self.xmlgen.endElement("meta")

    def open_track(self, track):
        self._indent()
        self.xmlgen.startElement("track", track)
        self._level += 1

    def open_image(self, image):
        self._indent()
        self.xmlgen.startElement("image", image)
        self._level += 1

    def open_box(self, box):
        self._indent()
        self.xmlgen.startElement("box", box)
        self._level += 1

    def open_polygon(self, polygon):
        self._indent()
        self.xmlgen.startElement("polygon", polygon)
        self._level += 1

    def open_polyline(self, polyline):
        self._indent()
        self.xmlgen.startElement("polyline", polyline)
        self._level += 1

    def open_points(self, points):
        self._indent()
        self.xmlgen.startElement("points", points)
        self._level += 1

    def add_attribute(self, attribute):
        self._indent()
        self.xmlgen.startElement("attribute", {"name": attribute["name"]})
        self.xmlgen.characters(attribute["value"])
        self.xmlgen.endElement("attribute")

    def close_box(self):
        self._level -= 1
        self._indent()
        self.xmlgen.endElement("box")

    def close_polygon(self):
        self._level -= 1
        self._indent()
        self.xmlgen.endElement("polygon")

    def close_polyline(self):
        self._level -= 1
        self._indent()
        self.xmlgen.endElement("polyline")

    def close_points(self):
        self._level -= 1
        self._indent()
        self.xmlgen.endElement("points")

    def close_image(self):
        self._level -= 1
        self._indent()
        self.xmlgen.endElement("image")

    def close_track(self):
        self._level -= 1
        self._indent()
        self.xmlgen.endElement("track")

    def close_root(self):
        self._level -= 1
        self._indent()
        self.xmlgen.endElement("annotations")
        self.xmlgen.endDocument()

def dump_as_cvat_annotation(dumper, annotations):
    for frame_annotation in annotations.by_frame:
        frame_id = frame_annotation.frame
        dumper.open_image(OrderedDict([
            ("id", str(frame_id)),
            ("name", frame_annotation.name),
            ("width", str(frame_annotation.width)),
            ("height", str(frame_annotation.height))
        ]))

        for shape in frame_annotation.labeled_shapes:
            dump_data = OrderedDict([
                ("label", shape.label),
                ("occluded", str(int(shape.occluded))),
            ])

            if shape.type == "rectangle":
                dump_data.update(OrderedDict([
                    ("xtl", "{:.2f}".format(shape.points[0])),
                    ("ytl", "{:.2f}".format(shape.points[1])),
                    ("xbr", "{:.2f}".format(shape.points[2])),
                    ("ybr", "{:.2f}".format(shape.points[3]))
                ]))
            else:
                dump_data.update(OrderedDict([
                    ("points", ';'.join((
                        ','.join((
                            "{:.2f}".format(x),
                            "{:.2f}".format(y)
                        )) for x, y in pairwise(shape.points))
                    )),
                ]))

            if annotations.meta["task"]["z_order"] != "False":
                dump_data['z_order'] = str(shape.z_order)
            if "group" in shape and shape.group:
                dump_data['group_id'] = str(shape.group)

            if shape.type == "rectangle":
                dumper.open_box(dump_data)
            elif shape.type == "polygon":
                dumper.open_polygon(dump_data)
            elif shape.type == "polyline":
                dumper.open_polyline(dump_data)
            elif shape.type == "points":
                dumper.open_points(dump_data)
            else:
                raise NotImplementedError("unknown shape type")

            for attr in shape.attributes:
                dumper.add_attribute(OrderedDict([
                    ("name", attr.name),
                    ("value", attr.value)
                ]))

            if shape.type == "rectangle":
                dumper.close_box()
            elif shape.type == "polygon":
                dumper.close_polygon()
            elif shape.type == "polyline":
                dumper.close_polyline()
            elif shape.type == "points":
                dumper.close_points()
            else:
                raise NotImplementedError("unknown shape type")

        dumper.close_image()

def dump_as_cvat_interpolation(dumper, annotations):
    def dump_track(idx, track):
        track_id = idx
        dump_data = OrderedDict([
            ("id", str(track_id)),
            ("label", track.label),
        ])

        if track.group:
            dump_data['group_id'] = str(track.group)
        dumper.open_track(dump_data)

        for shape in track.shapes:
            dump_data = OrderedDict([
                ("frame", str(shape.frame)),
                ("outside", str(int(shape.outside))),
                ("occluded", str(int(shape.occluded))),
                ("keyframe", str(int(shape.keyframe))),
            ])

            if shape.type == "rectangle":
                dump_data.update(OrderedDict([
                    ("xtl", "{:.2f}".format(shape.points[0])),
                    ("ytl", "{:.2f}".format(shape.points[1])),
                    ("xbr", "{:.2f}".format(shape.points[2])),
                    ("ybr", "{:.2f}".format(shape.points[3])),
                ]))
            else:
                dump_data.update(OrderedDict([
                    ("points", ';'.join(['{:.2f},{:.2f}'.format(x, y)
                        for x,y in pairwise(shape.points)]))
                ]))

            if annotations.meta["task"]["z_order"] != "False":
                dump_data["z_order"] = str(shape.z_order)

            if shape.type == "rectangle":
                dumper.open_box(dump_data)
            elif shape.type == "polygon":
                dumper.open_polygon(dump_data)
            elif shape.type == "polyline":
                dumper.open_polyline(dump_data)
            elif shape.type == "points":
                dumper.open_points(dump_data)
            else:
                raise NotImplementedError("unknown shape type")

            for attr in shape.attributes:
                dumper.add_attribute(OrderedDict([
                    ("name", attr.name),
                    ("value", attr.value)
                ]))

            if shape.type == "rectangle":
                dumper.close_box()
            elif shape.type == "polygon":
                dumper.close_polygon()
            elif shape.type == "polyline":
                dumper.close_polyline()
            elif shape.type == "points":
                dumper.close_points()
            else:
                raise NotImplementedError("unknown shape type")
        dumper.close_track()

    counter = 0
    for track in annotations.tracks:
        dump_track(counter, track)
        counter += 1

    for shape in annotations.shapes:
        dump_track(counter, annotations.Track(
            label=shape.label,
            group=shape.group,
            shapes=[annotations.TrackedShape(
                type=shape.type,
                points=shape.points,
                occluded=shape.occluded,
                outside=False,
                keyframe=True,
                z_order=shape.z_order,
                frame=shape.frame,
                attributes=shape.attributes,
            ),
            annotations.TrackedShape(
                type=shape.type,
                points=shape.points,
                occluded=shape.occluded,
                outside=True,
                keyframe=True,
                z_order=shape.z_order,
                frame=shape.frame + 1,
                attributes=shape.attributes,
            ),
            ],
        ))
        counter += 1

dumper = XmlAnnotationWriter(file_object)
dumper.open_root()
dumper.add_meta(annotations.meta)

if dump_format == "cvat_xml_for_images":
    dump_as_cvat_annotation(dumper, annotations)
else:
    dump_as_cvat_interpolation(dumper, annotations)

dumper.close_root()

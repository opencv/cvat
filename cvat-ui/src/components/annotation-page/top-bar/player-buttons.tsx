// Copyright (C) 2020-2024 Intel Corporation
//
// SPDX-License-Identifier: MIT

import React from 'react';
import { Col } from 'antd/lib/grid';
import Icon from '@ant-design/icons';
import Popover from 'antd/lib/popover';

import CVATTooltip from 'components/common/cvat-tooltip';
import GlobalHotKeys, { KeyMap } from 'utils/mousetrap-react';
import {
    FirstIcon,
    BackJumpIcon,
    PreviousIcon,
    PreviousFilteredIcon,
    PreviousEmptyIcon,
    PlayIcon,
    PauseIcon,
    NextIcon,
    NextFilteredIcon,
    NextEmptyIcon,
    ForwardJumpIcon,
    LastIcon,
} from 'icons';

interface Props {
    playing: boolean;
    playPauseShortcut: string;
    nextFrameShortcut: string;
    previousFrameShortcut: string;
    forwardShortcut: string;
    backwardShortcut: string;
    prevButtonType: string;
    nextButtonType: string;
    keyMap: KeyMap;
    onSwitchPlay(): void;
    onPrevFrame(): void;
    onNextFrame(): void;
    onForward(): void;
    onBackward(): void;
    onFirstFrame(): void;
    onLastFrame(): void;
    onSearchAnnotations(direction: 'forward' | 'backward'): void;
    setPrevButton(type: 'regular' | 'filtered' | 'empty'): void;
    setNextButton(type: 'regular' | 'filtered' | 'empty'): void;
}

function PlayerButtons(props: Props): JSX.Element {
    const {
        playing,
        playPauseShortcut,
        nextFrameShortcut,
        previousFrameShortcut,
        forwardShortcut,
        backwardShortcut,
        prevButtonType,
        nextButtonType,
        keyMap,
        onSwitchPlay,
        onPrevFrame,
        onNextFrame,
        onForward,
        onBackward,
        onFirstFrame,
        onLastFrame,
        onSearchAnnotations,
        setPrevButton,
        setNextButton,
    } = props;

    const subKeyMap = {
        NEXT_FRAME: keyMap.NEXT_FRAME,
        PREV_FRAME: keyMap.PREV_FRAME,
        FORWARD_FRAME: keyMap.FORWARD_FRAME,
        BACKWARD_FRAME: keyMap.BACKWARD_FRAME,
        SEARCH_FORWARD: keyMap.SEARCH_FORWARD,
        SEARCH_BACKWARD: keyMap.SEARCH_BACKWARD,
        PLAY_PAUSE: keyMap.PLAY_PAUSE,
        FOCUS_INPUT_FRAME: keyMap.FOCUS_INPUT_FRAME,
    };

    const handlers = {
        NEXT_FRAME: (event: KeyboardEvent | undefined) => {
            event?.preventDefault();
            onNextFrame();
        },
        PREV_FRAME: (event: KeyboardEvent | undefined) => {
            event?.preventDefault();
            onPrevFrame();
        },
        FORWARD_FRAME: (event: KeyboardEvent | undefined) => {
            event?.preventDefault();
            onForward();
        },
        BACKWARD_FRAME: (event: KeyboardEvent | undefined) => {
            event?.preventDefault();
            onBackward();
        },
        SEARCH_FORWARD: (event: KeyboardEvent | undefined) => {
            event?.preventDefault();
            onSearchAnnotations('forward');
        },
        SEARCH_BACKWARD: (event: KeyboardEvent | undefined) => {
            event?.preventDefault();
            onSearchAnnotations('backward');
        },
        PLAY_PAUSE: (event: KeyboardEvent | undefined) => {
            event?.preventDefault();
            onSwitchPlay();
        },
    };

    const prevRegularText = 'Go back';
    const prevFilteredText = 'Go back with a filter';
    const prevEmptyText = 'Go back to an empty frame';
    const nextRegularText = 'Go next';
    const nextFilteredText = 'Go next with a filter';
    const nextEmptyText = 'Go next to an empty frame';

    let prevButton = <Icon className='cvat-player-previous-button' component={PreviousIcon} onClick={onPrevFrame} />;
    let prevButtonTooltipMessage = prevRegularText;
    if (prevButtonType === 'filtered') {
        prevButton = (
            <Icon
                className='cvat-player-previous-button-filtered'
                component={PreviousFilteredIcon}
                onClick={onPrevFrame}
            />
        );
        prevButtonTooltipMessage = prevFilteredText;
    } else if (prevButtonType === 'empty') {
        prevButton = (
            <Icon className='cvat-player-previous-button-empty' component={PreviousEmptyIcon} onClick={onPrevFrame} />
        );
        prevButtonTooltipMessage = prevEmptyText;
    }

    let nextButton = <Icon className='cvat-player-next-button' component={NextIcon} onClick={onNextFrame} />;
    let nextButtonTooltipMessage = nextRegularText;
    if (nextButtonType === 'filtered') {
        nextButton = (
            <Icon className='cvat-player-next-button-filtered' component={NextFilteredIcon} onClick={onNextFrame} />
        );
        nextButtonTooltipMessage = nextFilteredText;
    } else if (nextButtonType === 'empty') {
        nextButton = <Icon className='cvat-player-next-button-empty' component={NextEmptyIcon} onClick={onNextFrame} />;
        nextButtonTooltipMessage = nextEmptyText;
    }

    return (
        <Col className='cvat-player-buttons'>
            <GlobalHotKeys keyMap={subKeyMap} handlers={handlers} />
            <CVATTooltip title='Go to the first frame'>
                <Icon className='cvat-player-first-button' component={FirstIcon} onClick={onFirstFrame} />
            </CVATTooltip>
            <CVATTooltip title={`Go back with a step ${backwardShortcut}`}>
                <Icon className='cvat-player-backward-button' component={BackJumpIcon} onClick={onBackward} />
            </CVATTooltip>
            <Popover
                trigger='contextMenu'
                placement='bottom'
                content={(
                    <>
                        <CVATTooltip title={`${prevRegularText}`}>
                            <Icon
                                className='cvat-player-previous-inlined-button'
                                component={PreviousIcon}
                                onClick={() => {
                                    setPrevButton('regular');
                                }}
                            />
                        </CVATTooltip>
                        <CVATTooltip title={`${prevFilteredText}`}>
                            <Icon
                                className='cvat-player-previous-filtered-inlined-button'
                                component={PreviousFilteredIcon}
                                onClick={() => {
                                    setPrevButton('filtered');
                                }}
                            />
                        </CVATTooltip>
                        <CVATTooltip title={`${prevEmptyText}`}>
                            <Icon
                                className='cvat-player-previous-empty-inlined-button'
                                component={PreviousEmptyIcon}
                                onClick={() => {
                                    setPrevButton('empty');
                                }}
                            />
                        </CVATTooltip>
                    </>
                )}
            >
                <CVATTooltip placement='top' title={`${prevButtonTooltipMessage} ${previousFrameShortcut}`}>
                    {prevButton}
                </CVATTooltip>
            </Popover>

            {!playing ? (
                <CVATTooltip title={`Play ${playPauseShortcut}`}>
                    <Icon className='cvat-player-play-button' component={PlayIcon} onClick={onSwitchPlay} />
                </CVATTooltip>
            ) : (
                <CVATTooltip title={`Pause ${playPauseShortcut}`}>
                    <Icon className='cvat-player-pause-button' component={PauseIcon} onClick={onSwitchPlay} />
                </CVATTooltip>
            )}

            <Popover
                trigger='contextMenu'
                placement='bottom'
                content={(
                    <>
                        <CVATTooltip title={`${nextRegularText}`}>
                            <Icon
                                className='cvat-player-next-inlined-button'
                                component={NextIcon}
                                onClick={() => {
                                    setNextButton('regular');
                                }}
                            />
                        </CVATTooltip>
                        <CVATTooltip title={`${nextFilteredText}`}>
                            <Icon
                                className='cvat-player-next-filtered-inlined-button'
                                component={NextFilteredIcon}
                                onClick={() => {
                                    setNextButton('filtered');
                                }}
                            />
                        </CVATTooltip>
                        <CVATTooltip title={`${nextEmptyText}`}>
                            <Icon
                                className='cvat-player-next-empty-inlined-button'
                                component={NextEmptyIcon}
                                onClick={() => {
                                    setNextButton('empty');
                                }}
                            />
                        </CVATTooltip>
                    </>
                )}
            >
                <CVATTooltip placement='top' title={`${nextButtonTooltipMessage} ${nextFrameShortcut}`}>
                    {nextButton}
                </CVATTooltip>
            </Popover>
            <CVATTooltip title={`Go next with a step ${forwardShortcut}`}>
                <Icon className='cvat-player-forward-button' component={ForwardJumpIcon} onClick={onForward} />
            </CVATTooltip>
            <CVATTooltip title='Go to the last frame'>
                <Icon className='cvat-player-last-button' component={LastIcon} onClick={onLastFrame} />
            </CVATTooltip>
        </Col>
    );
}

export default React.memo(PlayerButtons);

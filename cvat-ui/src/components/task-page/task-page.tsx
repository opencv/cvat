import React from 'react';
import { RouteComponentProps } from 'react-router';
import { withRouter } from 'react-router-dom';

import {
    Col,
    Row,
    Spin,
    Modal,
} from 'antd';

import TopBarContainer from '../../containers/task-page/top-bar';
import DetailsContainer from '../../containers/task-page/details';
import JobListContainer from '../../containers/task-page/job-list';

interface TaskPageComponentProps {
    taskInstance: any;
    taskFetchingError: string;
    deleteActivity: boolean | null;
    installedGit: boolean;
    onFetchTask: (tid: number) => void;
}

class TaskPageComponent extends React.PureComponent<TaskPageComponentProps & RouteComponentProps<{id: string}>> {
    public componentDidUpdate() {
        if (this.props.deleteActivity) {
            this.props.history.replace('/tasks');
        }
    }

    public render() {
        const { id } = this.props.match.params;
        const fetchTask = !this.props.taskInstance && !this.props.taskFetchingError
            || (this.props.taskInstance && this.props.taskInstance.id !== +id );

        if (fetchTask) {
            this.props.onFetchTask(+id);
            return (
                <Spin size='large' style={{margin: '25% 50%'}}/>
            );
        } else if (this.props.taskFetchingError) {
            Modal.error({
                title: `Could not receive task ${id}`,
                content: this.props.taskFetchingError,
            });

            return (
                <div> </div>
            )
        } else {
            return (
                <Row type='flex' justify='center' align='middle'>
                    <Col md={22} lg={18} xl={16} xxl={14}>
                        <TopBarContainer/>
                        <DetailsContainer/>
                        <JobListContainer/>
                    </Col>
                </Row>
            );
        }
    }
}

export default withRouter(TaskPageComponent);

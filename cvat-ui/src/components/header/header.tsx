import React from 'react';

import { RouteComponentProps } from 'react-router';
import { withRouter } from 'react-router-dom';

import {
    Layout,
    Icon,
    Button,
    Menu,
    Dropdown,
} from 'antd';

import Text from 'antd/lib/typography/Text';

import getCore from '../../core';
import {
    CVATLogo,
    UserIcon,
} from '../../icons';

const core = getCore();
const serverHost = core.config.backendAPI.slice(0, -7);

interface HeaderContainerProps {
    onLogout: () => void;
    logoutFetching: boolean;
    installedAnalytics: boolean;
    installedAutoAnnotation: boolean;
    installedTFAnnotation: boolean;
    installedTFSegmentation: boolean;
    username: string;
}

type Props = HeaderContainerProps & RouteComponentProps;

function HeaderContainer(props: Props): JSX.Element {
    const {
        installedTFSegmentation,
        installedAutoAnnotation,
        installedTFAnnotation,
        installedAnalytics,
        username,
        onLogout,
        logoutFetching,
    } = props;

    const renderModels = installedAutoAnnotation
        || installedTFAnnotation
        || installedTFSegmentation;

    const menu = (
        <Menu className='cvat-header-menu' mode='vertical'>
            <Menu.Item
                onClick={onLogout}
                disabled={logoutFetching}
                className='cvat-header-button'
            >
                {logoutFetching && <Icon type='loading' />}
                Logout
            </Menu.Item>
        </Menu>
    );

    return (
        <Layout.Header className='cvat-header'>
            <div className='cvat-left-header'>
                <Icon className='cvat-logo-icon' component={CVATLogo} />

                <Button
                    className='cvat-header-button'
                    type='link'
                    value='tasks'
                    onClick={
                        (): void => props.history.push('/tasks?page=1')
                    }
                >
                    Tasks
                </Button>
                { renderModels
                    && (
                        <Button
                            className='cvat-header-button'
                            type='link'
                            value='models'
                            onClick={
                                (): void => props.history.push('/models')
                            }
                        >
                            Models
                        </Button>
                    )
                }
                { installedAnalytics
                    && (
                        <Button
                            className='cvat-header-button'
                            type='link'
                            onClick={
                                (): void => {
                                    // false positive
                                    // eslint-disable-next-line
                                    window.open(`${serverHost}/analytics/app/kibana`, '_blank');
                                }
                            }
                        >
                            Analytics
                        </Button>
                    )
                }
            </div>
            <div className='cvat-right-header'>
                <Button
                    className='cvat-header-button'
                    type='link'
                    onClick={
                        (): void => {
                            window.open('https://github.com/opencv/cvat', '_blank');
                        }
                    }
                >
                    <Icon type='github' />
                    <Text className='cvat-black-color'>GitHub</Text>
                </Button>
                <Button
                    className='cvat-header-button'
                    type='link'
                    onClick={
                        (): void => {
                            // false positive
                            // eslint-disable-next-line
                            window.open(`${serverHost}/documentation/user_guide.html`, '_blank')
                        }
                    }
                >
                    <Icon type='question-circle' />
                    Help
                </Button>
                <Dropdown overlay={menu} className='cvat-header-menu-dropdown'>
                    <span>
                        <Icon className='cvat-header-user-icon' component={UserIcon} />
                        <Text strong>
                            {username.length > 14 ? `${username.slice(0, 10)} ...` : username}
                        </Text>
                        <Icon className='cvat-header-menu-icon' type='caret-down' />
                    </span>
                </Dropdown>
            </div>
        </Layout.Header>
    );
}

export default withRouter(HeaderContainer);

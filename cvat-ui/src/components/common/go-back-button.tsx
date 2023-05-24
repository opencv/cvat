import React from 'react';
import Button from 'antd/lib/button';
import Text from 'antd/lib/typography/Text';
import { LeftOutlined } from '@ant-design/icons';
import useGoBack from 'utils/hooks';

function GoBackButton(): JSX.Element {
    const goBack = useGoBack();
    return (
        <>
            <Button size='small' style={{ marginRight: 8 }} onClick={goBack}>
                <LeftOutlined />
            </Button>
            <Text strong>Back</Text>
        </>
    );
}

export default React.memo(GoBackButton);

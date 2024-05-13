import React, { useState, useRef, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import { useClickOutside } from '../../../hooks/useClickOutside';
import { checkPermission } from '../../../utils/permissions';
import { fetchNui } from '../../../utils/misc';

// Components
import Tooltip from '../../../components/Tooltip';

// Assets
import Placeholder from '../../../assets/default-profile.png';

interface Props {
    citizenid?: string;
    ems_image: string | null;
    onChange: (...args: any[]) => any;
}

const Image: React.FC<Props> = ({ citizenid, ems_image, onChange }) => {
    const { t } = useTranslation('translation');

    const ref = useRef(null);
    const [preview, setPreview] = useState(false);

    useClickOutside(ref, (event: MouseEvent) => {
        event.preventDefault();

        if (!preview) return;
        setPreview(false);
    });

    const change = useCallback(() => {
        fetchNui('SetOpacity', 0);
        fetchNui('TakeScreenshot')
            .then(async data => {
                let permission = await checkPermission('citizens.edit', t);
                if (!permission) return fetchNui('SetOpacity', 1);

                onChange({
                    target: {
                        id: 'image',
                        value: data
                    }
                });

                fetchNui('update', {
                    type: 'citizen',
                    identifierType: 'citizenid',
                    identifier: citizenid,
                    values: { ems_image: data }
                });

                fetchNui('SetOpacity', 1);
            });
    }, []);

    return (
        <Tooltip text={t('common.tooltip.image')}>
            <img
                ref={ref}
                className={preview ? 'preview' : ''}
                src={ems_image || Placeholder}
                alt='profile-picture'
                onClick={change}
                onContextMenu={() => setPreview(!preview)}
            />
        </Tooltip>
    );
}

export default Image;

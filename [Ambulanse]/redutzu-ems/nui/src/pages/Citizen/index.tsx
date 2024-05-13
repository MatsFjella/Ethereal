import React from 'react';
import { useQuery } from 'react-query';
import { useParams } from 'react-router-dom';
import { Trans, useTranslation } from 'react-i18next';
import { fetchNui } from '../../utils/misc';
import moment from 'moment';

// Form
import { useFormik } from 'formik';

// Components
import Page from '../../components/Page';
import SimpleList from '../../components/SimpleList';
import Image from './Image';

// Assets
import './styles.scss';

const Citizen: React.FC = () => {
    const { t } = useTranslation('translation');
    const parameters = useParams();

    const { isLoading, data } = useQuery(['citizen', parameters.citizenid], () =>
        fetchNui('search', {
            type: 'citizen',
            query: parameters.citizenid,
            single: true
        })
        .then(async data => {
            let response = await fetchNui('GetCitizenData', { citizenid: parameters.citizenid });
            let charinfo = JSON.parse(data.charinfo);
            let metadata = JSON.parse(data.metadata);

            return {
                ...data,
                ...response,
                firstname: charinfo.firstname,
                lastname: charinfo.lastname,
                dateofbirth: charinfo.birthdate,
                fingerprint: metadata.fingerprint,
                sex: charinfo.gender ? 'F' : 'M'
            }
        })
    )

    const firstname = !isLoading ? data.firstname : 'Loading...';
    const lastname = !isLoading ? data.lastname : 'Loading...';
    const phone_number = !isLoading ? data.phone_number : 'Loading...';
    const dateofbirth = !isLoading ? data.dateofbirth : 'Loading...';
    const sex = !isLoading ? data.sex : 'Loading...';
    const fingerprint = !isLoading ? data.fingerprint : 'Loading...';
    const ems_image = !isLoading ? data.ems_image : 'Loading...';
    const incidents = !isLoading ? data.incidents : [];
    const job = !isLoading ? data.job : { label: 'Loading...', grade: 'Loading...' };

    const { values, handleChange } = useFormik({
        initialValues: {
            image: ems_image || ''
        },
        enableReinitialize: true,
        onSubmit: () => {}
    });

    return (
        <Page header={{ title: t('citizens.citizen.title'), subtitle: t('citizens.citizen.subtitle'), backable: true }}>
            <div className='citizen'>
                <div className='citizen-header'>
                    <Image
                        citizenid={parameters.citizenid}
                        ems_image={values.image}
                        onChange={handleChange}
                    />
                    <h1>{firstname} {lastname}</h1>
                </div>
                <div className='information'>
                    <div className='title'>
                        <h1><Trans t={t}>words.information</Trans></h1>
                    </div>
                    <div className='content'>
                        <p><b><Trans t={t}>words.firstname</Trans>:</b>{firstname}</p>
                        <p><b><Trans t={t}>words.lastname</Trans>:</b>{lastname}</p>
                        <p><b><Trans t={t}>words.gender</Trans>:</b>{sex.toUpperCase()}</p>
                        <p><b><Trans t={t}>words.birth</Trans>:</b>{dateofbirth} ({moment(dateofbirth, 'YYYY-MM-DD').fromNow(true)})</p>
                        <p><b><Trans t={t}>words.fingerprint</Trans>:</b>{fingerprint}</p>
                        <p><b><Trans t={t}>words.phone</Trans>:</b>{phone_number}</p>
                        <p><b><Trans t={t}>words.job</Trans>:</b>{job.label} ({job.grade})</p>
                    </div>
                </div>
                <div className='body'>
                    <SimpleList 
                        label={t('citizens.incidents')}
                        results={incidents}
                        icon='fa-solid fa-shield-halved'
                        main_template='#{id} {name}'
                        secondary_template='~createdAt~'
                        redirect='/incident/{id}'
                    />
                </div>
            </div>
        </Page>  
    );
}

export default Citizen;

import React from 'react';
import { useTranslation } from 'react-i18next';
import { useNavigate } from 'react-router-dom';
import { showNotification } from '@mantine/notifications';
import { fetchNui } from '../../../utils/misc';
import { useForm } from '../../../hooks/useForm';

// Form
import schema from '../../../schemas/invoices';

// Components
import Form from '../../../components/Form';
import Input from '../../../components/Input';
import FormattedInput from '../../../components/FormattedInput';
import Button from '../../../components/Button';

// Assets
import './styles.scss';

const InvoicesForm: React.FC = () => {
    const { t } = useTranslation('translation');
    const navigate = useNavigate();

    const { values, errors, touched, clearValues, handleBlur, handleChange, handleSubmit } = useForm({
        initialValues: {
            name: '',
            amount: ''
        },
        key: 'invoice',
        schema: schema,
        permission: 'invoices.create',
        submit: async (values) => {
            let response = await fetchNui('create', { 
                type: 'invoices',
                event: 'invoices:create',
                data: values
            });

            return response;
        },
        onSuccess: (response) => {
            showNotification({
                title: t('invoices.notification.success.title') as string,
                message: t('invoices.notification.success.message', { id: response.data }) as string,
                autoClose: 5000
            });

            return navigate(`/invoice/${response.data}`);
        },
        onFail: () => showNotification({
            title: t('invoices.notification.error.title') as string,
            message: t('invoices.notification.error.message') as string,
            autoClose: 5000
        })
    });

    return (
        <Form onSubmit={handleSubmit} clearValues={clearValues} label={t('invoices.create')} autoComplete='off'>
            <Input 
                id='name'
                placeholder={t('invoices.name')}
                value={values.name}
                onBlur={handleBlur}
                onChange={handleChange}
                className={errors.name && touched.name ? 'input-error' : ''}
                error={errors.name && touched.name ? errors.name as string : ''}
            />

            <FormattedInput
                id='amount'
                placeholder={t('invoices.amount')}
                onBlur={handleBlur}
                change={handleChange}
                className={errors.amount && touched.amount ? 'input-error' : ''}
                error={errors.amount && touched.amount ? errors.amount as string : ''}
                format='currency'
                format_options={{
                    locale: window.CONFIG.DEFAULT_LOCALE,
                    currency: window.CONFIG.CURRENCY,
                    maxDecimals: 2,
                    liveUpdate: true
                }}
            />

            <Button label={t('invoices.button')} type='submit' />
        </Form>
    );
}

export default InvoicesForm;

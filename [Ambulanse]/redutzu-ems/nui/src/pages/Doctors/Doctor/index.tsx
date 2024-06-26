import React from 'react';
import { useNavigate } from 'react-router-dom';

interface Props {
    data: any;
}

const Doctor: React.FC<Props> = ({ data }) => {
    const navigate = useNavigate();

    return (
        <div className='doctor' onClick={() => navigate(`/citizen/${data.citizenid}`)}>
            <div className='info'>
                <h1>{data.name}</h1>
                <h2>{data.job} | {data.grade}</h2>
                <p>{data.phone_number}</p>
            </div>
            <div className='icon'>
                <i className='fa-solid fa-user-shield'></i>
            </div>
        </div>
    )
}

export default Doctor;

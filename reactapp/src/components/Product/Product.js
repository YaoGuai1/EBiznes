import React, { useContext } from 'react';
import Card from 'react-bootstrap/Card';
import { Link } from 'react-router-dom';
import { CartContext } from '../../contexts/CartContext';

export default function Product(props) {
    const { addProduct } = useContext(CartContext);

    return (
        <Card style={{ width: '20rem', marginBottom: '32px' }}>
            <Card.Body>
                <Card.Title style={{ textAlign: 'center', marginBottom: '32px' }} bg='primary'>{props.data.name}</Card.Title>
                <Card.Text>
                    <strong>Opis: </strong>{props.data.description} <br />
                    <strong>Cena: </strong>{props.data.price} zł
                </Card.Text>
            </Card.Body>
            <Card.Body>
                <Card.Link onClick={() => addProduct(props.data)}>Dodaj do koszyka</Card.Link><br />
                <Link to={`/product-details/${props.data.id}`}>Sprawdź szczegóły</Link>
            </Card.Body>
        </Card>
    );
}
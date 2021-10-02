import React from 'react';
import styles from "../css/GameNavbar.css"

import { Nav, Row, Col, Container } from 'react-bootstrap';
import {LinkContainer} from "react-router-bootstrap";


const GameNavbar = () => {
    return (
        <Container className="game-navbar" >
        <Row id="nav-items-frow">
            <Col className="nav-item">
                <LinkContainer to="#">
                    <Nav.Link>Play match</Nav.Link>
                </LinkContainer>
            </Col>
            <Col className="nav-item">
                <LinkContainer to="#">
                    <Nav.Link>Play tournament</Nav.Link>
                </LinkContainer>
            </Col>
        </Row>
        <Row id="nav-items-srow">
            <Col className="nav-item" id="trainPlayers">
                <LinkContainer to="#">
                    <Nav.Link>Train players</Nav.Link>
                </LinkContainer>
            </Col>
            <Col className="nav-item" id="teamSquad">
                <LinkContainer to="#">
                    <Nav.Link>Team squad</Nav.Link>
                </LinkContainer>
            </Col>
            <Col className="nav-item">
                <LinkContainer to="#">
                    <Nav.Link>Shop</Nav.Link>
                </LinkContainer>   
            </Col>
            <Col className="nav-item">
                <LinkContainer to="#">
                    <Nav.Link>Settings</Nav.Link>
                </LinkContainer>
            </Col>
            
        </Row>
        </Container>
    );
}

export default GameNavbar;
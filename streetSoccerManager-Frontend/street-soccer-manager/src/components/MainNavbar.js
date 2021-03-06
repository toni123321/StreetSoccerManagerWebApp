import React from "react";
import { Navbar, Nav, Container, NavDropdown, NavLink } from 'react-bootstrap';
import {LinkContainer} from "react-router-bootstrap";
import styles from "../css/MainNavbar.scss";
import Cookies from 'universal-cookie';
import { useHistory, Link } from 'react-router-dom';
import SignOut from "./SignOut/SignOut";
import {useAuth} from "../hooks/use-auth.js";

function MainNavbar() {
    const cookies = new Cookies();
    const token = cookies.get('login-token');
    

    let history = useHistory();
    let auth = useAuth();

    return (
            <div>
                <div>
                <Navbar className="main-navbar" collapseOnSelect expand="lg"  variant="dark">
                    <Container>
                        <Navbar.Brand id="nav-brand">Street Soccer Manager</Navbar.Brand>
                        <Navbar.Toggle aria-controls="responsive-navbar-nav" />
                        <Navbar.Collapse id="responsive-navbar-nav">
                        <Nav>
                            
                            <LinkContainer to="/" exact >
                                <Nav.Link className="homeNavItem" ><i className="fas fa-home"></i> Home</Nav.Link>
                            </LinkContainer>
                            <LinkContainer to="/game" exact>
                                <Nav.Link className="gameNavItem" ><i className="fas fa-gamepad"></i> Game</Nav.Link>
                            </LinkContainer>
                            
                            <LinkContainer to="/about" >
                                <Nav.Link className="aboutNavItem"><i className="fas fa-info"></i> About</Nav.Link>
                            </LinkContainer>
                            <LinkContainer to="/contact">
                                <Nav.Link className="contactNavItem"><i className="far fa-address-book"></i> Contact</Nav.Link>
                            </LinkContainer>
                           
                           {/* <LinkContainer to="/account">
                                    <Nav.Link ><i class="fas fa-user"></i> View account</Nav.Link>
                            </LinkContainer>
                            <button  onClick={() => {
                                        auth.signout(() => history.push("/"));
                                    }} className="active nav-link active logout">
                                        <i class="fas fa-sign-out-alt"></i> Log out
                            </button> */}
                            
                            {auth.isUserLogged ?
                            (
                            <>
                            {auth.isAdmin ?
                            (
                            <NavDropdown title="Admin View" id="basic-nav-dropdown">
                            <NavDropdown.Item as={Link} to="/">
                                <div>Home page</div>
                            </NavDropdown.Item>
                            <NavDropdown.Divider />
                            <NavDropdown.Item as={Link} to="/about">
                                <div>About page</div>
                            </NavDropdown.Item>
                            </NavDropdown>
                            ):(<></>)}
                            <NavDropdown title={<i className="fas fa-user-circle"/>} className="profile-avatar" id="basic-nav-dropdown">
                            <NavDropdown.Item className="accountNavItem" as={Link} to="/account">
                                <div><i class="fas fa-user"></i> View account</div>
                            </NavDropdown.Item>
                            <NavDropdown.Divider />
                            <NavDropdown.Item className="logoutNavItem">
                                <div onClick={() => {
                                        auth.signout(() => history.push("/"));
                                    }}>
                                        <i class="fas fa-sign-out-alt"></i> Log out
                                </div>
                            </NavDropdown.Item>
                            </NavDropdown>
                            </>
                            ):(
                            <>
                            <LinkContainer to="/loginPage" >
                            <Nav.Link className="loginNavItem"><i className="fas fa-sign-in-alt"></i> Log in</Nav.Link>
                            </LinkContainer>
                            </>)}
                        </Nav>
                        </Navbar.Collapse>
                    </Container>
                </Navbar>
                </div>
            </div>
    )
}

export default MainNavbar;
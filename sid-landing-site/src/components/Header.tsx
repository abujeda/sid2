import React from 'react'

const Header = () => {
    return (
        <div id="header">
            <h1><a href="#">Welcome to </a></h1>
            <nav>
                <ul className="nav">
                    <li><a className="link-hover-effect" href="#">About</a></li>
                    <li><a className="link-hover-effect" href="#">Documentation</a></li>
                    <li><a className="link-hover-effect" href="#">Support</a></li>
                    <li className="connect-icon btn-hover-effect"><a className="connect-icon" href="#">Connect to</a></li>
                </ul>
            </nav>
            
        </div>
    )
}

export default Header

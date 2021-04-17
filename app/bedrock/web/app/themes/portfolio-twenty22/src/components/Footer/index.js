import React from 'react'
import {
	FooterContainer
} from './FooterElements'

const Footer = () => {
	return (
		<FooterContainer>
			&copy; {new Date().getFullYear()}
		</FooterContainer>
	)
}

export default Footer

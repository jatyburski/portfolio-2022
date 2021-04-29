import React, { useState, useEffect } from 'react'
import { ListItem, Button } from '../FooterElements'
import { graphql, useStaticQuery } from "gatsby"
import copy from "copy-to-clipboard"; 

const query = graphql`{
	allWp {
		nodes {
			generalSettings {
				email
			}
		}
	}
}`

const EmailOptions = () => {

	// Data
	const data = useStaticQuery(query)
	const emailAddress = data.allWp.nodes[0].generalSettings.email

	// Copy to Clipboard
	const [buttonText, setButtonText] = useState('Copy');

	useEffect(() => {
		let timer = setTimeout(() => setButtonText('Copy'), 1500);
		return () => {
			clearTimeout(timer);
		}
	});
  
	const handleCopyEmail = (e) => {
		setButtonText(e.target.value);
	} 
	
	const copyToClipboard = () => {
		copy(emailAddress);
		setButtonText('Copied!');
	}

  return (
    <ListItem hasOptions>
			<span aria-hidden="true" defaultState>
				Email
			</span>
			<div>
				<input onChange={ handleCopyEmail } className="hidden" />
				<Button onClick={ copyToClipboard }>
					{ buttonText }
				</Button>
				<span aria-hidden="true">|</span>
				<a href={ 'mailto:' + emailAddress + '?subject=Hello Joe' }>
					Use in App
				</a>
			</div>
    </ListItem>
  )
}

export default EmailOptions

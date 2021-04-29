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
			<span aria-hidden="true">
				Email
			</span>
			<div>
				<input onChange={ handleCopyEmail } className="hidden" />
				<Button onClick={ copyToClipboard }>
					{ buttonText }
				</Button>
				<span>|</span>
				<a href={ 'mailto:' + emailAddress + '?subject=Hello Joe' }>
					Open in App
				</a>
			</div>
    </ListItem>
  )
}

export default EmailOptions

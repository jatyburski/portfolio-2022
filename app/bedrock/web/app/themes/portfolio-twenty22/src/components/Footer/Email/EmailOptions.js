import React, { useState } from 'react'
import { ListItem, Button } from '../FooterElements'
import { graphql, useStaticQuery } from "gatsby"
import Clipboard from 'clipboard'

const query = graphql`{
	allWp {
		nodes {
			generalSettings {
				email
			}
		}
	}
}`

const Email = () => {

	// Data
	const data = useStaticQuery(query)
  	const email = data.allWp.nodes[0].generalSettings.email

	// Copy to Clipboard
	const clip = new Clipboard("button");
	const element = document.getElementsByTagName("button");

	clip.on("success", function() {
		let successMessage = document.createElement('div');
		successMessage.innerText = "Copied!";
		element[0].insertAdjacentElement('beforebegin', successMessage);
	});
	clip.on("error", function() {
		let errorMessage = document.createElement('div');
		errorMessage.innerText = "Failed...";
		element[0].insertAdjacentElement('beforebegin', errorMessage);
	});
	
	return (
		<ListItem hasOptions>
			<span>
				Email
			</span>
			<div>
				<Button data-clipboard-text="test">
					Copy
				</Button> |
				<a href={ 'mailto:' + email + '?subject=Hello Joe' }>
					Open in App
				</a>
			</div>
		</ListItem>
	)
}

export default Email

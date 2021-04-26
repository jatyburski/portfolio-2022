import React, { useState } from 'react'
import { ListItem, DefaultState, Button } from '../FooterElements'
import { graphql, useStaticQuery } from "gatsby"
import Clipboard from 'clipboard'
import gsap, { Back } from 'gsap'

const query = graphql`{
	allWp {
		nodes {
			generalSettings {
				email
			}
		}
	}
}`



// const flip = new Flip(".flip-container");

// flip.hover(
//   function() {
// 		gsap.to((this).find(".flip-item"), {duration: 1.2, rotationY:180, ease:Back.easeOut});
//   },
//   function() {
//     gsap.to((this).find(".flip-item"), {duration: 1.2, rotationY:0, ease:Back.easeOut}); 
//   }
// );

const Email = () => {

	// Data
	const data = useStaticQuery(query)
  	const email = data.allWp.nodes[0].generalSettings.email

	// Triggers
	const [isShown, setIsShown] = useState(false);
	const copy = new Clipboard("button");

	// Animations
	function flipText() {
		gsap.set(".flip-container", { perspective: 800 });
		gsap.set(".flip-item", { transformStyle: "preserve-3d" });
		gsap.set(".flip-reveal", { rotationY: -180 });
		gsap.set([ ".flip-reveal", ".flip-default" ], { backfaceVisibility:"hidden" });
		
	}

	// Copy to Clipboard
	copy.on("success", function() {
		alert("Copied to clipboard.")
	});
	copy.on("error", function() {
		alert("Failed to copy.")
	});
	
	return (
		<ListItem 
			hasOptions
			onMouseEnter={() => setIsShown(true)}
			onMouseLeave={() => setIsShown(false)}>
			<DefaultState>
				Email
			</DefaultState>
			{isShown && (
				<div className="absolute overflow-hidden flip-reveal">
					<Button data-clipboard-text={ email }>
						Copy Email
					</Button>
					<a href={ 'mailto:' + email + '?subject=Hello Joe' }>
						Open in Mail App
					</a>
				</div>
			)}
		</ListItem>
	)
}

export default Email

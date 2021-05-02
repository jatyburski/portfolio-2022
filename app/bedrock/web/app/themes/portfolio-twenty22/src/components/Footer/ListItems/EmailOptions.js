import React, { useState, useEffect } from 'react'
import { ListItem, PopOver, Button } from '../FooterElements'
import copy from "copy-to-clipboard"; 
import useHover from '../../../hooks/useHover';
import { useThemeOptions } from '../../../hooks/useThemeOptions'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
// import gsap, { TweenMax, Linear } from 'gsap'

export default function EmailOptions () {
	const { themeOptions } = useThemeOptions()
	const { settings } = themeOptions
	const { emailaddress } = settings

	// Popover
	const [hoverRef, isHovered] = useHover();

	// const tl = gsap.timeline()

	// const fadeAnimation = (email) => {
	// 	tl.to(email, 0.3, {
	// 		opacity: 1,
	// 		ease: Linear,
	// 		paused: true
	// 	})
	// }

	// useEffect(() => {
	// 	TweenMax.set(isHovered, {
	// 		opacity: 0
	// 	})
	// });

	// Copy to Clipboard
	const [buttonText, setButtonText] = useState('Copy as Text');

	useEffect(() => {
		let timer = setTimeout(() => setButtonText('Copy as Text'), 1500);
		return () => {
			clearTimeout(timer);
		}
	});
  
	const handleCopyEmail = (e) => {
		setButtonText(e.target.value);
	} 
	
	const copyToClipboard = () => {
		copy(emailaddress);
		setButtonText('Copied!');
	}

  return (
    <ListItem ref={ hoverRef } key="0" hasOptions>
			<span>Email</span>
			
			{isHovered && (
				<PopOver role="dialog">
					<input onChange={ handleCopyEmail } className="hidden" />
					
					<Button onClick={ copyToClipboard } aria-live="polite">
						<FontAwesomeIcon icon={['fas', 'clone']} /> { buttonText }
					</Button>
					
					<a href={ 'mailto:' + emailaddress + '?subject=Hello Joe' }>
						<FontAwesomeIcon icon={ ['fas', 'envelope-open-text'] } /> Open in Mail App
					</a>
				</PopOver>
			)}
    </ListItem>
  )
	
}

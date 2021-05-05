import React, { useState, useEffect } from 'react'
import { ListItem, PopOver, PopOverItem, Button } from '../FooterElements'
import copy from "copy-to-clipboard"; 
// import useHover from '../../../hooks/useHover';
import { useThemeOptions } from '../../../hooks/data/useThemeOptions'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faClone } from "@fortawesome/pro-solid-svg-icons/faClone"
import { faEnvelopeOpenText } from "@fortawesome/pro-solid-svg-icons/faEnvelopeOpenText"
// import gsap, { TweenMax, Linear } from 'gsap'

export default function EmailOptions () {
	const { themeOptions } = useThemeOptions()
	const { settings } = themeOptions
	const { emailaddress } = settings

	// Popover
	const [hoverRef, isHovered] = useState(false);
	// const handleHover = () => isHovered(!hoverRef)

	const onMouseEnter = () => {
		isHovered(true)
	}

	const onMouseLeave = () => {
		isHovered(false)
	}

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
    <ListItem 
			key="0" 
			hasOptions 
			onMouseEnter={ onMouseEnter } 
			onMouseLeave={ onMouseLeave }
		>
			<span>Email</span>
			<input onChange={ handleCopyEmail } className="hidden" />
			
			{isHovered && (
				<PopOver 
					role="dialog" 
					className={ hoverRef ? 'flex' : 'hidden' }
				>	
					<PopOverItem>
						<Button onClick={ copyToClipboard } aria-live="polite">
							<FontAwesomeIcon icon={ faClone } /> { buttonText }
						</Button>
					</PopOverItem>
					
					<PopOverItem>
						<a 
							className="block p-8"
							href={ 'mailto:' + emailaddress + '?subject=Hello Joe' } 
							onClick={ () => isHovered(false) }
						>
							<FontAwesomeIcon icon={ faEnvelopeOpenText } /> Open in Mail App
						</a>
					</PopOverItem>
				</PopOver>
			)}
    </ListItem>
  )
	
}

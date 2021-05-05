import React from 'react'
import {
	Container,
	Row,
	Title,
	List,
	Colophon,
	Widget,
	WidgetLink
} from './FooterElements'
// import { Link } from "gatsby"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faHeart } from "@fortawesome/pro-solid-svg-icons/faHeart"
import { faMusic } from "@fortawesome/pro-solid-svg-icons/faMusic"
import ListItems from './ListItems/ListItems'

export default function Footer () {
	
	return (
		<Container>
			<Row>
				<Title>
					<span>Let's</span>
					<span>Connect</span>
				</Title>
				
				<List>
					<ListItems />
				</List>
			</Row>
			
			<Row>
				<Colophon>
					<p>
						Designed &amp; Developed with <FontAwesomeIcon icon={ faHeart } className="mx-1" />
						<span className="sr-only">love</span> and <FontAwesomeIcon icon={ faMusic } className="mx-1" />
						<span className="sr-only">music</span> in Baltimore.
					</p>
					
					<p>
						<span aria-label="Copyright">c &mdash;</span> {new Date().getFullYear()}. All Rights Reserved.
					</p>
				</Colophon>
				
				<Widget>
					<WidgetLink to="/technology-that-built-this-site">
						<span>Technology That Built This Site</span>
					</WidgetLink>
				</Widget>
			</Row>
		</Container>
	)
	
}

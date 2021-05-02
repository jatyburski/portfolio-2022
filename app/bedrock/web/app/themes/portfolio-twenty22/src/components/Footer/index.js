import React from 'react'
import {
	Container,
	Row,
	Title,
	List,
	Colophon,
	Widget
} from './FooterElements'
import { Link } from "gatsby"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
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
						Designed &amp; Developed with <FontAwesomeIcon icon={ [ 'fas', 'heart' ] } className="mx-1" />
						<span className="sr-only">love</span> and <FontAwesomeIcon icon={ [ 'fas', 'music' ] } className="mx-1" />
						<span className="sr-only">music</span> in Baltimore.
					</p>
					
					<p>
						<span aria-label="Copyright">c &mdash;</span> {new Date().getFullYear()}. All Rights Reserved.
					</p>
				</Colophon>
				
				<Widget>
					<Link to="/technology-that-built-this-site" className="hover:text-white">
						Technology That Built This Site
					</Link>
				</Widget>
			</Row>
		</Container>
	)
	
}

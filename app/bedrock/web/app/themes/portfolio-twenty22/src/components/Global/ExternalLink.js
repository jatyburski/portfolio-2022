import React from "react"

const ExternalLink = ({ to, className, idName, title, children }) => {
	return (
		<a 
      href={to} 
      target="_blank" 
      rel="noreferrer"
      className={className}
      id={idName}
      title={title}
    >
      {children}
    </a>
	)
}

export default ExternalLink
import * as React from "react"
import { library } from "@fortawesome/fontawesome-svg-core"
import { 
  faBehance, 
  faCodepen, 
  faDribbble, 
  faGithub, 
  faLinkedinIn, 
  faMediumM 
} from "@fortawesome/free-brands-svg-icons"
import { faHeart, faMusic } from "@fortawesome/pro-solid-svg-icons"

import Header from "../Header"
import { Body, StaticBackground } from "./LayoutElements"
import Footer from "../Footer"

library.add([
  faMediumM, faLinkedinIn, faCodepen, faDribbble, faBehance, faGithub, faHeart, faMusic
])

const Layout = ({ children }) => {

  return (
    <>
      <StaticBackground />
      <Header />
      
      <Body>
        {children}
      </Body>

      <Footer />
    </>
  )
}

export default Layout

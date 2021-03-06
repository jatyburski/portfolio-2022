import styled from 'styled-components'
import { Link } from 'gatsby'
import tw from 'twin.macro'

export const Container = styled.header.attrs(props => ({
  className: "test"
}))`
  ${tw`bg-xiketic`}
  a {
    color: white;
  }
`;

export const Nav = styled.nav`
  
`;

export const NavLogo = styled(Link)`
  ${tw`font-black tracking-wider uppercase font-condensed text-10xl`}
`;

export const NavItemContainer = styled.ul`

`;

export const NavItem = styled.li`

`;

export const IconContainer = styled.ul`

`;

export const IconItem = styled.li`

`;
import styled from 'styled-components'
import tw from 'twin.macro'

export const Body = styled.main`
	${tw`overflow-x-hidden`}
`;

export const StaticBackground = styled.canvas.attrs(props => ({
	id: 'canvas'
  }))`
  	${tw`absolute w-full h-full`}
  `;
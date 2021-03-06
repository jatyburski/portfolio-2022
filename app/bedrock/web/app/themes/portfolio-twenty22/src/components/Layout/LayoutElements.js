import styled, { keyframes } from 'styled-components'
import tw from 'twin.macro'
import noise from '../../images/noise.png'

export const Body = tw.main`
	overflow-x-hidden
`;

const grain = keyframes`
	0%, 100% { transform: translate(0, 0) }
	10% { transform: translate(-5%, -10%) }
	20% { transform: translate(-15%, 5%) }
	30% { transform: translate(7%, -25%) }
	40% { transform: translate(-5%, 25%) }
	50% { transform: translate(-15%, 10%) }
	60% { transform: translate(15%, 0%) }
	70% { transform: translate(0%, 15%) }
	80% { transform: translate(3%, 35%) }
	90% { transform: translate(-10%, 10%) }
`;

export const StaticBackground = styled.div`
  ${tw`bg-repeat fixed height[300%] left[-50%] opacity[.04] pointer-events-none top[-125%] width[300%] z-50`}

	animation: ${grain} 6s steps(10) infinite;
  background-image: url(${noise});
`;
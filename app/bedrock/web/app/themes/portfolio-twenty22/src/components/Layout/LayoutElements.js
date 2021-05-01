import styled from 'styled-components'
import tw from 'twin.macro'
import image from '../../images/noise.png'

export const Body = styled.main`
	${tw`overflow-x-hidden`}
`;

export const StaticBackground = styled.canvas`
  	${tw`bg-repeat fixed height[300%] left[-50%] opacity[.04] pointer-events-none top[-100%] width[300%] z-50`}

	animation: grain 6s steps(10) infinite;
  	background-image: url(${image});
	
	@keyframes grain {
		0%,
		100% {
			-webkit-transform: translate(0, 0);
					transform: translate(0, 0);
		}
		10% {
			-webkit-transform: translate(-5%, -10%);
					transform: translate(-5%, -10%);
		}
		20% {
			-webkit-transform: translate(-15%, 5%);
					transform: translate(-15%, 5%);
		}
		30% {
			-webkit-transform: translate(7%, -25%);
					transform: translate(7%, -25%);
		}
		40% {
			-webkit-transform: translate(-5%, 25%);
					transform: translate(-5%, 25%);
		}
		50% {
			-webkit-transform: translate(-15%, 10%);
					transform: translate(-15%, 10%);
		}
		60% {
			-webkit-transform: translate(15%, 0%);
					transform: translate(15%, 0%);
		}
		70% {
			-webkit-transform: translate(0%, 15%);
					transform: translate(0%, 15%);
		}
		80% {
			-webkit-transform: translate(3%, 35%);
					transform: translate(3%, 35%);
		}
		90% {
			-webkit-transform: translate(-10%, 10%);
					transform: translate(-10%, 10%);
		}
	}
  `;
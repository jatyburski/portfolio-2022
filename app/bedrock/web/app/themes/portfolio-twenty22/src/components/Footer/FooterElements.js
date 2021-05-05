import styled, { keyframes } from 'styled-components'
import tw, {css} from 'twin.macro'
import ExternalLink from '../Global/ExternalLink'
import { Link } from 'gatsby'

// Global
export const Container = tw.footer`
  w-full mt-60
`;

export const Row = tw.section`
  flex justify-end
`;


// First Section
export const Title = styled.h3`
  ${tw`-mb-12 font-black tracking-wide uppercase xl:w-5/12 lg:w-7/12 leading-less text-10xl font-condensed`}

	span {
		${tw`block`}
	}
`;

export const List = tw.ul`
  flex flex-col items-start justify-end xl:w-4/12 lg:w-3/12
`;

export const ListItem = styled.li`
  ${tw`font-bold font-sans line-height[1.15] overflow-hidden text-6xl`}
  
  ${({ hasOptions }) => hasOptions && css`
    ${tw`relative overflow-visible`}
    
    span {
      ${tw`block cursor-pointer`}
    }

    /* &:hover {
      > span {
        ${tw`color[transparent] transform[translate3d(0, 0, -60px) rotateX(90deg)]`}
      }
      
      div {
        ${tw`transform[translate3d(0, 0, 0) rotateX(0deg)]`}
      }
    }

    div {
      ${tw`absolute block left-0 origin-center-top top-0 transform[translate3d(0, 105%, 0) rotateX(-90deg)] transition-all motion-safe:duration-200 motion-reduce:duration-75 ease-linear`}
  
      span {
        ${tw`mx-2`}
      }
  
      *:not(span) {
        ${tw`transition-all ease-linear motion-safe:duration-200 motion-reduce:duration-75`}
        
        &:hover {
          ${tw`text-mustard`}
        }
      } */
    }
  `}
`;

export const PopOver = tw.ul`
  absolute divide-y divide-grey flex-col justify-center overflow-hidden z-40 transform[translateY(-90%)] bg-white h-auto rounded-md text-left text-base text-xiketic w-96
`;

export const PopOverItem = tw.li`
	
`;

export const ListLink = styled(ExternalLink)`
  ${tw`block perspective[1000px] perspective-origin[150% 50%]`}

  &:hover,
	&:focus {
		span {
			${tw`color[transparent] transform[translate3d(0, 0, -60px) rotateX(90deg)]`}
		}
	}

  span {
    ${tw`
      block origin-center-top relative transform-style[preserve-3d] transition-all motion-safe:transition-duration[275ms] motion-reduce:duration-75 ease-linear
      
      after:(
        absolute block content[attr(data-title)] left-0 origin-center-top top-0 text-white transform[translate3d(0, 105%, 0) rotateX(-90deg)]
      )
    `}
  }
`;

export const Button = tw.button`
  text-left focus:outline-none block p-8 hover:bg-grey w-full
`;


// Second Section
export const Colophon = tw.div`
	leading-relaxed pb-16 pt-24 relative text-grey text-xs xl:w-4/12 lg:w-5/12
	
	before:(
		absolute border-grey border-solid border-t empty-content h-px left[-16.666vw] top[calc(50% + 10px)] width[8.333vw]
	)
`;

export const Widget = tw.div`
  flex items-start justify-end leading-normal margin-right[8.333vw] pt-24 text-grey text-xs w-2/12
`;

const glitchText = keyframes`
	0% {
		${tw`transform[translate3d(-10px, 0, 0) scale3d(-1, -1, 1)] opacity-100 clip-path[polygon(0 20%, 100% 20%, 100% 21%, 0 21%)]`}
	}
	10% { ${tw`clip-path[polygon(0 33%, 100% 33%, 100% 33%, 0 33%)]`} }
	20% { ${tw`clip-path[polygon(0 44%, 100% 44%, 100% 44%, 0 44%)]`} }
	35% { ${tw`clip-path[polygon(0 50%, 100% 50%, 100% 20%, 0 20%)]`} }
	50% { ${tw`clip-path[polygon(0 70%, 100% 70%, 100% 70%, 0 70%)]`} }
	60% { ${tw`clip-path[polygon(0 80%, 100% 80%, 100% 80%, 0 80%)]`} }
	70% { ${tw`clip-path[polygon(0 50%, 100% 50%, 100% 55%, 0 55%)]`} }
	80% { ${tw`clip-path[polygon(0 70%, 100% 70%, 100% 80%, 0 80%)]`} }
	90% { ${tw`transform[translate3d(-10px, 0, 0) scale3d(-1, -1, 1)]`} }
	100% {
		${tw`transform[translate3d(0, 0, 0) scale3d(1, 1, 1)] clip-path[polygon(0 0, 100% 0, 100% 100%, 0% 100%)]`}
	}
`;

const glitchLine = keyframes`
	0% { ${tw`transform[scale3d(1, 1, 1)]`} }
	10% { ${tw`transform[translate3d(10px, 0, 0)]`} }
	20% { ${tw`transform[translate3d(0, 4px, 0)]`} }
	30% { ${tw`transform[scale3d(.1, 1.4, 1) translate3d(0, -25px, 0)] transform-origin[100% 0]`} }
	40% { ${tw`transform[scale3d(1, .3, 1) translate3d(0, 25px, 0)]`} }
	50% { ${tw`transform[scale3d(.5, .3, 1) translate3d(-100px, -80px, 0)]`} }
	60% { ${tw`transform[scale3d(1, 1.25, 1) translate3d(10px, -5px, 0)]`} }
	70% { ${tw`transform[scale3d(.5, .5, 1) translate3d(0, 20px, 0)]`} }
	80% { ${tw`transform[scale3d(1, .4, 1) translate3d(-30, 10px, 0)] transform-origin[100% 0]`} }
	90% { ${tw`transform[scale3d(1, .5, 1) translate3d(0, -15px, 0)] transform-origin[0 50%]`} }
	100% { ${tw`opacity-100`} }
`;

export const WidgetLink = styled(Link)`
	${tw`relative
	
		before:(
			absolute background[currentColor] empty-content h-px left-0 opacity-0 pointer-events-none top-full w-full
		)
	`}
	
	&:hover,
	&:focus {
		${tw`text-mustard`}
		
		&::before {
			${tw`opacity-100`}
			
			@media (prefers-reduced-motion: no-preference) {
				animation: ${glitchLine} 0.4s steps(2, start) forwards;
			}

			@media (prefers-reduced-motion: reduce) {
				animation: ${glitchLine} 0s steps(2, start) forwards;
			}
		}
		
		span {
			@media (prefers-reduced-motion: no-preference) {
				animation: ${glitchText} 0.4s linear;
			}

			@media (prefers-reduced-motion: reduce) {
				animation: ${glitchText} 0s linear;
			}
		}
	}
`;
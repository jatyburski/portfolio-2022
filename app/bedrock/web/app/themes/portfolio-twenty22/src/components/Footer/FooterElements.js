import styled from 'styled-components'
import tw from 'twin.macro'
import ExternalLink from '../Global/ExternalLink';

// Global
export const Container = styled.footer`
  ${tw`w-full mt-60`}
`;

export const Row = styled.section`
  ${tw`flex justify-end`}
`;


// First Section
export const Title = styled.h3`
  ${tw`w-5/12 -mb-12 font-black tracking-wide uppercase text-10xl font-condensed leading-less`}
`;

export const List = styled.ul`
  ${tw`flex flex-col items-start justify-end w-4/12`}
`;

export const ListItem = styled.li`
  ${tw`font-sans text-6xl font-bold line-height[1.15] overflow-hidden`}

  ${({ hasOptions }) => hasOptions && tw`flex flex-col`}
`;

export const ListLink = styled(ExternalLink)`
  ${tw`overflow-hidden perspective[600] perspective-origin[50%]`}

  &:hover span {
    ${tw`color[transparent] transform[translate3d(0, 0, -60px) rotateX(90deg)]`}
  }

  span {
    ${tw`
      block relative transform-origin[50% 0] transform-style[preserve-3d] transition-all duration-500 ease
      
      after:(
        absolute block content[attr(data-title)] left-0 top-0 text-mustard transform[translate3d(0, 105%, 0) rotateX(-90deg)] transform-origin[50% 0]
      )
    `}
  }
`;

export const Button = styled.button`
  ${tw`font-bold`}
`;


// Second Section
export const Colophon = styled.div`
  ${tw`
    leading-relaxed relative pb-16 pt-24 text-grey text-xs w-4/12
    before:(absolute border-grey border-solid border-t empty-content h-px left[-16.666vw] top[calc(50% + 10px)] width[8.333vw])
  `}
`;

export const Widget = styled.div`
  ${tw`flex justify-end w-2/12 pt-24 pb-16 text-xs leading-normal text-grey margin-right[8.333vw]`}
`;
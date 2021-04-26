import styled from 'styled-components'
import tw from 'twin.macro'

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

export const SocialProfiles = styled.ul.attrs(props => ({
  className: 'flip-container'
}))`
  ${tw`flex flex-col justify-end w-4/12`}
`;

export const ListItem = styled.li.attrs(props => ({
  className: 'flip-item'
}))`
  ${tw`font-sans text-6xl font-bold line-height[1.15]`}

  ${({ hasOptions }) => hasOptions && tw`relative`}
`;

export const DefaultState = styled.span.attrs(props => ({
  className: 'flip-default',
  tabIndex: '-1',
  'aria-hidden': 'true',
}))`
  ${tw`focus:outline-none`}
`;

export const Button = styled.button`
  ${tw`font-bold`}
`;


// Second Section
export const Colophon = styled.div`
  ${tw`relative w-4/12 pt-24 pb-16 text-xs leading-relaxed text-grey before:(absolute border-grey border-solid border-t empty-content h-px left[-16.666vw] top[calc(50% + 10px)] width[8.333vw])`}
`;

export const Widget = styled.div`
  ${tw`flex justify-end w-2/12 pt-24 pb-16 text-xs leading-normal text-grey margin-right[8.333vw]`}
`;
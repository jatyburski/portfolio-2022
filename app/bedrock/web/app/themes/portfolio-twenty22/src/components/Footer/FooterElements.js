import styled from 'styled-components'
import tw from 'twin.macro'

export const Container = styled.footer`
  ${tw`w-full`}
`;

export const Row = styled.section`
  ${tw`flex`}
`;

export const Title = styled.h3`
  ${tw`w-4/12 font-black tracking-wider uppercase text-10xl font-condensed`}
`;

export const SocialProfiles = styled.ul`
  ${tw`flex flex-col justify-end w-3/12`}
`;

export const ListItem = styled.li`
  ${tw`font-sans font-bold text-7xl`}
`;

export const Colophon = styled.div`
  ${tw`w-2/12 py-5 text-xs text-grey`}
`;

export const Widget = styled.div`
  ${tw`flex justify-end w-2/12 py-5 text-xs text-grey`}
`;
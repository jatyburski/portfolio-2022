module.exports = {
  purge: [["./src/**/*.{js,jsx,ts,tsx}"]],
  darkMode: false, // or 'media' or 'class'
  theme: {
    colors: {
      xiketic: '#140F23',
      grey: '#8A8791',
      mustard: `#FFC857`,
      white: `#FFFFFF`,
    },
    fontFamily: {
      sans: ['Neogrotesk Pro', 'sans-serif'],
      condensed: ['Origin Super Condensed', 'sans-serif'],
    },
    extend: {
      fontSize: {
        xs: '.7rem',
        '6xl': '3.4rem',
        '10xl': '23.4375rem',
      },
      lineHeight: {
        less: '.8',
      },
    },
  },
  variants: {
    extend: {
      borderColor: [
        'before',
      ],
      borderStyle: [
        'before',
      ],
      borderWidth: [
        'before',
      ],
      height: [
        'before',
      ],
      position: [
        'before',
      ],
    },
  },
  plugins: [
    require('tailwindcss-pseudo-elements')
  ],
}

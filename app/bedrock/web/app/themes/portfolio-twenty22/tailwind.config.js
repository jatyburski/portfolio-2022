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
        '10xl': '23.4375rem',
      },
      marginLeft: {
        'ml-1/12': '8.333%',
        'ml-2/12': '16.666%',
        'ml-3/12': '24.999%',
        'ml-4/12': '32.332%',
        'ml-5/12': '40.665%',
        'ml-6/12': '48.998%',
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}

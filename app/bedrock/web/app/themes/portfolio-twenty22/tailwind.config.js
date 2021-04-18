module.exports = {
  purge: [["./src/**/*.{js,jsx,ts,tsx}"]],
  darkMode: false, // or 'media' or 'class'
  theme: {
    colors: {
      black: '#140F23',
      grey: '#8A8791',
      yellow: `#FFC857`,
    },
    fontFamily: {
      sans: ['Neogrotesk Pro', 'sans-serif'],
      condensed: ['Origin Super Condensed', 'sans-serif'],
    },
    extend: {
      fontSize: {
        '10xl': '23.5rem',
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}

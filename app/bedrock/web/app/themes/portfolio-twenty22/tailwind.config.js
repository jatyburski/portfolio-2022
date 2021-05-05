module.exports = {
  purge: [["./src/**/*.{js,jsx,ts,tsx}"]],
  darkMode: false, // or 'media' or 'class'
  theme: {
    colors: {
      xiketic: '#140F23',
      grey: '#A4A9AD',
      mustard: `#FFC857`,
      white: `#FBF9FF`,
			'imperial-red': `#EF233C`,
			'light-green': `#7DDF64`,
    },
    fontFamily: {
      sans: ['Neogrotesk Pro', 'sans-serif'],
      condensed: ['Origin Super Condensed', 'sans-serif'],
    },
    extend: {
      fontSize: {
        xs: '.7rem',
				base: '1.25rem',
        '6xl': '3.4rem',
        '10xl': '23.4375rem',
      },
      lineHeight: {
        less: '.8',
      },
      transitionDelay: {
        '0': '0ms',
      },
      transformOrigin: {
        'center-top': '50% 0',
      },
    },
  },
  variants: {
    extend: {},
    transformDuration: ['responsive', 'motion-safe', 'motion-reduce']
  },
  plugins: [
    require('tailwindcss-pseudo-elements')
  ],
}

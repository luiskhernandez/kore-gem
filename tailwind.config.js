/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./app/components/kore/**/*.erb",
    "./app/components/kore/*.erb"
  ],
  theme: {
    extend: {},
  },
  plugins: [require("daisyui")],
}

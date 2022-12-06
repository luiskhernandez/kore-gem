/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./app/components/kore/**/*.erb",
    "./app/components/kore/*.erb",
    "./app/components/kore/*.rb",
    "./test/components/previews/kore/**/*.html.erb"
  ],
  theme: {
    extend: {},
  },
  plugins: [require("daisyui")],
}

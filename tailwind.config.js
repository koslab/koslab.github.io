/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./_layouts/**/*.html",
        "./_includes/**/*.html",
        "./*.md",
        "./*.html",
        "./blog/**/*.md",
        "./blog/**/*.html",
        "./agreements/**/*.md",
        "./agreements/**/*.html",
    ],
    theme: {
        extend: {
            colors: {
                brand: {
                    light: '#3b82f6',
                    DEFAULT: '#1d4ed8',
                    dark: '#1e3a8a',
                }
            }
        },
    },
    plugins: [],
}

// https://nuxt.com/docs/api/configuration/nuxt-config
import tailwindcss from '@tailwindcss/vite'

export default defineNuxtConfig({
  devtools: { enabled: true },
  css: ['~/assets/css/tailwind.css'],

  vite: {
    plugins: [
      tailwindcss(),
    ],
  },

  modules: ['shadcn-nuxt',"@nuxtjs/color-mode"],
  
  colorMode: {
    classSuffix: '',
    preference: 'system',
    fallback: 'light'
  },

  shadcn: {
    prefix: '',
    componentDir: './app/components/ui'
  },
})
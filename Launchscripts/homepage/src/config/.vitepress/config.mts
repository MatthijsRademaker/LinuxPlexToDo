import { defineConfig } from 'vitepress';

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Theo's Awesome media server",
  description: 'Docs for onboarding media server',
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Available Features', link: '/available-features' },
    ],

    sidebar: [
      {
        text: 'Streaming',
        items: [
          { text: 'Plex', link: '/streaming/plex' },
          { text: 'Overseer', link: '/streaming/overseerr' },
        ],
      },
      {
        text: 'Books',
        items: [
          { text: 'E-books', link: 'books/e-books' },
          { text: 'Audio-books', link: 'books/audio-books' },
        ],
      },
      {
        text: 'Storage',
        items: [
          { text: 'Photos', link: 'storage/photos' },
          { text: 'Documents', link: 'storage/documents' },
        ],
      },
    ],

    socialLinks: [
      { icon: 'github', link: 'https://github.com/vuejs/vitepress' },
    ],
  },
});

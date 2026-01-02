import { defineConfig } from 'zap';

export default defineConfig({
  server: {
    port: 3000,
    hostname: '0.0.0.0',
  },
  dev: {
    apiPort: 3000,
    clientPort: 5173,
    watchRust: true,
    watchTypeScript: true,
    open: true,
  },
});

# ZapJS Landing Page

Official landing page for [ZapJS](https://github.com/saint0x/zapjs) - a high-performance fullstack React framework powered by Rust.

This project is both a showcase and a real-world example of ZapJS in action, demonstrating file-based routing, type-safe RPC, and production deployment.

## Features

- **File-Based Routing**: Next.js-style routing with dynamic parameters
- **Type-Safe RPC**: Automatic TypeScript codegen from Rust functions
- **SSR/SSG**: Server-side rendering and static site generation
- **Real-time**: WebSocket and streaming support
- **Production Ready**: Optimized for deployment with Docker and Fly.io

## Tech Stack

- **Framework**: ZapJS (Rust + React)
- **Styling**: Tailwind CSS
- **Animations**: Framer Motion
- **Icons**: Lucide React
- **Runtime**: Bun
- **Deployment**: Fly.io

## Development

### Prerequisites

- [Bun](https://bun.sh/) 1.0+
- Node.js 18+ (alternative to Bun)

### Install Dependencies

```bash
bun install
```

### Start Development Server

```bash
bun run dev
```

This starts:
- Rust backend server on `http://localhost:3000`
- Vite dev server with HMR on `http://localhost:5173`

### Build for Production

```bash
bun run build
```

### Run Production Server

```bash
bun run serve
```

## Deployment

### Deploy to Fly.io

1. Install [Fly CLI](https://fly.io/docs/hands-on/install-flyctl/)

2. Login to Fly.io:
```bash
fly auth login
```

3. Deploy:
```bash
fly deploy
```

The app will be deployed to `https://zapjs-landing.fly.dev`

### Configuration

- `fly.toml` - Fly.io deployment configuration
- `zap.config.ts` - ZapJS framework configuration
- `vite.config.ts` - Vite build configuration
- `tailwind.config.js` - Tailwind CSS configuration

## Project Structure

```
zapjs-landing/
├── routes/           # File-based routes
│   ├── index.tsx    # Home page
│   ├── docs.tsx     # Documentation
│   └── blog/        # Blog routes
├── src/
│   ├── components/  # React components
│   ├── lib/         # Utilities
│   └── styles/      # Global styles
├── public/          # Static assets
├── dist/            # Production build output
├── Dockerfile       # Docker configuration
├── fly.toml         # Fly.io configuration
└── zap.config.ts    # ZapJS configuration
```

## Learn More

- [ZapJS Documentation](https://github.com/saint0x/zapjs)
- [Fly.io Docs](https://fly.io/docs/)
- [Tailwind CSS](https://tailwindcss.com/)
- [Framer Motion](https://www.framer.com/motion/)

## License

MIT

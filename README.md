# Nuxt Minimal Starter

Look at the [Nuxt documentation](https://nuxt.com/docs/getting-started/introduction) to learn more.

## Setup

Make sure to install dependencies:

```bash
# npm
npm install

# pnpm
pnpm install

# yarn
yarn install

# bun
bun install
```

## Development Server

Start the development server on `http://localhost:3000`:

```bash
# npm
npm run dev

# pnpm
pnpm dev

# yarn
yarn dev

# bun
bun run dev
```

## Production

Build the application for production:

```bash
# npm
npm run build

# pnpm
pnpm build

# yarn
yarn build

# bun
bun run build
```

Locally preview production build:

```bash
# npm
npm run preview

# pnpm
pnpm preview

# yarn
yarn preview

# bun
bun run preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.

## Environment Variables

The application uses the following environment variables:

### Development
Create a `.env` file in the root directory with:

```bash
NUXT_PUBLIC_API_BASE_URL=your_api_url_here
```

### GitHub Actions Deployment
The following secrets need to be set in your GitHub repository settings:

- `API_BASE_URL`: The base URL for your API endpoints

To set up secrets:
1. Go to your repository settings
2. Navigate to Secrets and Variables > Actions
3. Click "New repository secret"
4. Add the required secrets with their corresponding values

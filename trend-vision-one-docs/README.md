# Trend Vision One Documentation

This is a Docusaurus-based documentation site for Trend Vision One.

## Quick Start

### Install Dependencies

```bash
npm install
```

### Build the Site

```bash
npm run build
```

### Serve Locally

```bash
# Development server (with hot reload)
npm start

# Or serve the production build
npm run serve
```

The site will be available at `http://localhost:3000`

## Deployment

### GitHub Pages

1. Push this project to a GitHub repository
2. Enable GitHub Pages in repository settings
3. Configure GitHub Actions for deployment, or run:

```bash
npm run deploy
```

### Manual Deployment

The production build is in the `build/` folder after running `npm run build`. Upload the contents to any static hosting service.

### Production Build Archive

To generate a production ZIP archive (mirrors the online help center URL structure):

```bash
./generateProductionBuild.sh
```

The ZIP file will be created in the `productionBuild/` folder.

## Project Structure

```
trend-vision-one-docs/
├── docs/                      # Markdown documentation files
├── src/                       # Custom React components and CSS
│   ├── components/           # Custom components
│   └── css/                  # Custom styles
├── static/                   # Static assets (images, etc.)
├── build/                    # Generated site (after npm run build)
├── docusaurus.config.ts      # Docusaurus configuration
├── package.json              # Node.js dependencies
├── toc.ts                    # Table of contents structure
└── README.md                 # This file
```

## Customization

### Site Configuration

Edit `docusaurus.config.ts` to customize:
- Site title and tagline
- Base URL and deployment URL
- Theme colors and styling
- Navigation and footer

### Landing Page

Edit `docs/index.mdx` to customize the landing page cards and links.

### Styling

Custom CSS is in `src/css/custom.css`. Modify theme colors, fonts, and other styles here.

## Local Search

This project uses the `docusaurus-lunr-search` plugin. The search index is built automatically during `npm run build`.

## Learn More

- [Docusaurus Documentation](https://docusaurus.io/)
- [Markdown Features](https://docusaurus.io/docs/markdown-features)

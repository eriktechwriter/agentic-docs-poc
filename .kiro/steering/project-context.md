---
inclusion: always
---

# Agentic Docs POC - Project Context

## Project Overview

This is a proof-of-concept (POC) project for "agentic documentation" - an AI-powered approach to generating customized, context-aware documentation for users. The project consists of two main components:

1. **Trend Vision One Documentation Site** (Docusaurus) - The documentation repository
   - Repository: https://github.com/eriktechwriter/agentic-docs-poc
   - Live URL: https://eriktechwriter.github.io/agentic-docs-poc/

2. **Trend Vision One Mock Website** - A mock product website that demonstrates agentic documentation
   - Repository: https://github.com/eriktechwriter/trend-vision-one-mock
   - Live URL: https://eriktechwriter.github.io/trend-vision-one-mock/

## Current Project Status

### Phase 1: Documentation Site Setup ✅ COMPLETED

The Trend Vision One documentation site has been successfully deployed to GitHub Pages with the following accomplishments:

#### Deployment Infrastructure
- ✅ Fixed GitHub Actions workflow Node.js version mismatch (v18 → v20)
- ✅ Resolved Docusaurus config syntax error (missing comma)
- ✅ Successfully deployed to: `https://eriktechwriter.github.io/agentic-docs-poc/`
- ✅ Automated CI/CD pipeline working correctly

#### Branding & UI
- ✅ Updated main page title from "Deep Security" to "Trend Vision One"
- ✅ Added Trend Micro logo (logo.png) to navbar
- ✅ Generated and added favicon.ico for browser tabs
- ✅ Updated navbar title to display "Trend Vision One Online Help Center" with proper styling:
  - "Trend Vision One" in thin font (weight 300)
  - "Online Help Center" in bold font (weight 700)
- ✅ Removed repetitive text from navbar
- ✅ Created custom Navbar Logo component for styled title

### Phase 2: Agentic Documentation POC ✅ COMPLETED

The agentic documentation system has been successfully implemented:

#### Completed Components
1. ✅ **Mock Trend Vision One Website** - Deployed to separate GitHub Pages site
   - 4 interactive pages (Landing, Attack Surface, Workbench, Endpoint Inventory)
   - Context-aware help panel
   - User type selector (Admin, Analyst, CISO, Viewer)
   - Interactive tooltips
   - Responsive design and WCAG 2.1 AA accessibility
   
2. ✅ **Context-Aware Documentation** - Help content adapts based on:
   - User role (Admin, Analyst, CISO, Viewer)
   - Current page context
   - Specific UI element being viewed
   
3. ✅ **Testing and Validation** - Comprehensive testing suite
   - 100% test pass rate (50+ tests)
   - Performance exceeds requirements (< 2 second load times)
   - Full accessibility compliance

## Repository Structure

### Documentation Repository (agentic-docs-poc)
```
agentic-docs-poc/
├── .github/
│   └── workflows/
│       └── deploy.yml                    # GitHub Actions deployment workflow
├── .kiro/
│   ├── specs/
│   │   ├── fix-github-pages-deployment/  # Completed spec for Phase 1
│   │   └── mock-website-agentic-docs/    # Completed spec for Phase 2
│   └── steering/
│       └── project-context.md            # This file
└── trend-vision-one-docs/                # Docusaurus documentation site
    ├── docs/                             # Documentation content
    ├── src/
    │   ├── css/
    │   │   └── custom.css                # Custom styling
    │   └── theme/
    │       └── Navbar/
    │           └── Logo/
    │               └── index.tsx         # Custom navbar component
    ├── static/
    │   └── brand/
    │       ├── logo.png                  # Trend Micro logo
    │       └── favicon.ico               # Site favicon
    ├── docusaurus.config.ts              # Docusaurus configuration
    └── package.json                      # Dependencies
```

### Mock Website Repository (trend-vision-one-mock)
```
trend-vision-one-mock/
├── .github/
│   └── workflows/
│       └── deploy.yml                    # GitHub Actions deployment workflow
├── assets/
│   ├── css/                              # Stylesheets
│   ├── js/                               # JavaScript modules
│   └── data/                             # Help content and tooltips (JSON)
├── *.html                                # Page files
├── comprehensive-test.html               # Testing suite
├── accessibility-check.html              # Accessibility validator
├── validate-pages.html                   # Page validator
├── validate-html.js                      # HTML validator script
└── Documentation files (*.md)            # README, guides, reports
```

## Technology Stack

### Documentation Site (Current)
- **Framework**: Docusaurus 3.9.2
- **Runtime**: Node.js 20.19.5
- **Hosting**: GitHub Pages
- **CI/CD**: GitHub Actions
- **Language**: TypeScript/React

### Future Components (Planned)
- **Mock Website**: TBD (likely simple HTML/CSS/JS or React)
- **AI Integration**: TBD (API-based or embedded)
- **Content Generation**: TBD (LLM-based)

## Key Configuration Details

### GitHub Pages
- **URL**: `https://eriktechwriter.github.io/agentic-docs-poc/`
- **Base URL**: `/agentic-docs-poc/`
- **Organization**: `eriktechwriter`
- **Repository**: `agentic-docs-poc`

### Docusaurus
- **Product Name**: "Trend Vision One"
- **Working Directory**: `trend-vision-one-docs/`
- **Build Command**: `npm run build`
- **Output Directory**: `trend-vision-one-docs/build`

### Branding
- **Primary Color**: `#d71921` (Trend Micro red)
- **Logo**: Trend Micro circular logo with dragon
- **Favicon**: Generated from logo with multiple sizes (16-256px)

## Development Workflow

### Making Changes to Documentation
1. Edit files in `trend-vision-one-docs/docs/`
2. Commit and push to `main` branch
3. GitHub Actions automatically builds and deploys
4. Changes appear at the GitHub Pages URL within minutes

### Testing Locally
```bash
cd trend-vision-one-docs
npm install
npm start  # Development server at http://localhost:3000
npm run build  # Production build
```

## Next Steps for Agentic Docs POC

1. **Create Mock Website Spec**
   - Define requirements for the mock Trend Vision One website
   - Design the connection between mock site and docs
   - Plan the agentic documentation features

2. **Implement Mock Website**
   - Build a simple product interface mockup
   - Deploy to GitHub Pages (separate site or subdirectory)
   - Add UI elements that will trigger documentation requests

3. **Integrate AI Documentation Generation**
   - Design the API/interface for context-aware docs
   - Implement content generation based on user context
   - Connect mock website to documentation system

## Important Notes

- The documentation site contains legacy "Deep Security" content that should be gradually updated to "Trend Vision One" content as needed
- The current setup uses Docusaurus's built-in search (lunr-search plugin)
- All static assets should be placed in `trend-vision-one-docs/static/`
- Custom React components go in `trend-vision-one-docs/src/theme/` (swizzled components)
- The site uses a dark navbar theme with Trend Micro branding colors

## References

- **Live Site**: https://eriktechwriter.github.io/agentic-docs-poc/
- **Repository**: https://github.com/eriktechwriter/agentic-docs-poc
- **Docusaurus Docs**: https://docusaurus.io/docs
- **GitHub Actions**: https://docs.github.com/en/actions

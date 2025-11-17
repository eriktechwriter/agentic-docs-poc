# Design Document

## Overview

This design addresses the Node.js version mismatch in the GitHub Actions workflow that's preventing successful deployment of the Docusaurus site to GitHub Pages. The solution is straightforward: update the Node.js version in the workflow configuration from 18 to 20.

## Architecture

The GitHub Actions workflow consists of two jobs:
1. **Build Job**: Checks out code, sets up Node.js, installs dependencies, builds the site, and uploads the artifact
2. **Deploy Job**: Takes the build artifact and deploys it to GitHub Pages

The fix only affects the Build Job's Node.js setup step.

## Components and Interfaces

### Modified Component: `.github/workflows/deploy.yml`

**Current Configuration:**
```yaml
- uses: actions/setup-node@v4
  with:
    node-version: 18
    cache: npm
    cache-dependency-path: trend-vision-one-docs/package-lock.json
```

**Updated Configuration:**
```yaml
- uses: actions/setup-node@v4
  with:
    node-version: 20
    cache: npm
    cache-dependency-path: trend-vision-one-docs/package-lock.json
```

### No Changes Required To:
- Checkout action
- Dependency installation step
- Build command
- Artifact upload configuration
- Deploy job configuration

## Data Models

No data model changes required. This is a configuration-only change.

## Error Handling

The current error occurs during the build step:
```
Error: Minimum Node.js version not met :(
[INFO] You are using Node.js v18.20.8, Requirement: Node.js >=20.0.
Error: Process completed with exit code 1.
```

After the fix:
- The workflow will use Node.js 20.x (latest stable in the v20 line)
- The build will proceed without version errors
- Standard GitHub Actions error handling will continue to apply for other potential issues

## Testing Strategy

### Verification Steps:
1. Update the workflow file with Node.js version 20
2. Commit and push the change to trigger the GitHub Actions workflow
3. Monitor the workflow execution in the GitHub Actions tab
4. Verify the "Build website" step completes successfully
5. Verify the site deploys to GitHub Pages
6. Access the deployed site URL to confirm it's working

### Success Criteria:
- ✅ GitHub Actions workflow completes without errors
- ✅ Build step shows Node.js v20.x in use
- ✅ No Node.js version mismatch errors
- ✅ Site successfully deploys to GitHub Pages
- ✅ Deployed site is accessible and functional

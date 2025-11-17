# Implementation Plan

- [x] 1. Set up project structure and shared assets
  - Create `mock-site/` directory with subdirectories for assets (css, js, data)
  - Create `assets/css/common.css` with shared styles (colors, typography, layout)
  - Create `assets/css/components.css` with reusable component styles (buttons, panels, tooltips)
  - Create `assets/data/user-profiles.json` with user type definitions
  - _Requirements: 1.1, 1.4_

- [ ] 2. Build core JavaScript modules
- [x] 2.1 Implement Context Engine
  - Write `assets/js/context-engine.js` with ContextEngine class
  - Implement methods: getContext(), updateContext(), setUserType(), setCurrentPage(), getContextKey()
  - Add session storage persistence for user type preference
  - _Requirements: 4.1, 4.2, 4.3, 4.4_

- [x] 2.2 Implement User Type Selector component
  - Write `assets/js/user-selector.js` with UserSelector class
  - Create dropdown UI with 4 user types (Admin, Analyst, CISO, Viewer)
  - Implement onChange handler that updates context engine
  - Add visual indicator showing current user type in header
  - _Requirements: 7.3, 7.4_

- [x] 2.3 Implement Help Panel component
  - Write `assets/js/help-panel.js` with HelpPanel class
  - Create sliding panel HTML structure with header, content area, and close button
  - Implement open(), close(), loadContent(), renderContent() methods
  - Add loading spinner and error state handling
  - Add ESC key listener to close panel
  - _Requirements: 3.1, 3.2, 3.3, 3.4, 3.5, 6.1, 6.2, 6.3, 6.4, 6.5_

- [x] 2.4 Implement Tooltip component
  - Write `assets/js/tooltip.js` with TooltipManager class
  - Create tooltip bubble HTML structure with dynamic positioning
  - Implement show(), hide(), position() methods
  - Add click-outside listener to close tooltips
  - _Requirements: 7.5_

- [x] 2.5 Implement Content Generator
  - Write `assets/js/content-generator.js` with ContentGenerator class
  - Implement fetchStaticContent() method to load from JSON files
  - Add content caching with Map-based cache
  - Create fallback content for missing context keys
  - _Requirements: 5.1, 5.2, 5.4, 5.5, 8.3_

- [x] 2.6 Implement Navigation module
  - Write `assets/js/navigation.js` for side nav functionality
  - Add active page highlighting based on current URL
  - Implement smooth page transitions
  - _Requirements: 2.3_

- [x] 3. Create help content data files
  - Create `assets/data/help-content.json` with content for all context keys
  - Write content for Attack Surface Discovery page (admin, analyst, ciso, viewer perspectives)
  - Write content for Workbench page (admin, analyst, ciso, viewer perspectives)
  - Write content for Endpoint Inventory page (admin, analyst, ciso, viewer perspectives)
  - Write tooltip content for interactive elements on each page
  - _Requirements: 5.3, 7.1, 7.2_

- [x] 4. Build Attack Surface Discovery page
- [x] 4.1 Create page HTML structure
  - Create `mock-site/attack-surface.html` with complete page layout
  - Add top header with logo, search box, user selector, help button
  - Add side navigation with 3 page links
  - Add main content area with left/center/right panel structure
  - Add device list table at bottom
  - _Requirements: 1.1, 1.4, 2.1, 2.2, 2.4, 2.5_

- [x] 4.2 Implement page-specific features
  - Add tab navigation (Devices, Internet-Facing Assets, Accounts, etc.)
  - Create statistics cards in left panel with mock data
  - Create bar chart in center panel with mock monthly data
  - Create data source status list in right panel
  - Add help icons (❓) to tabs with tooltip triggers
  - _Requirements: 2.4, 7.5_

- [x] 4.3 Wire up interactivity
  - Initialize all JavaScript modules on page load
  - Connect help button to help panel
  - Connect help icons to tooltips
  - Connect user selector to context engine
  - Set page context to 'attack-surface'
  - _Requirements: 3.1, 4.1, 7.4_

- [x] 5. Build Workbench page
- [x] 5.1 Create page HTML structure
  - Create `mock-site/workbench.html` with shared header and side nav
  - Add main content area with alert/incident list layout
  - Add filter panel (status, severity, date range)
  - Add alert detail expandable sections
  - _Requirements: 2.1, 2.2, 2.4, 2.5_

- [x] 5.2 Add mock alert data
  - Create 8-10 sample alerts with varying severity levels
  - Add alert metadata (timestamp, status, assigned to, etc.)
  - Implement expandable alert details (click to expand/collapse)
  - Add action buttons (Investigate, Close, Escalate)
  - _Requirements: 2.4_

- [x] 5.3 Wire up interactivity
  - Initialize JavaScript modules
  - Connect help button and tooltips
  - Set page context to 'workbench'
  - Add help icons to key elements
  - _Requirements: 3.1, 4.1, 7.1_

- [ ] 6. Build Endpoint Inventory page
- [x] 6.1 Create page HTML structure
  - Create `mock-site/endpoint-inventory.html` with shared header and side nav
  - Add search and filter bar
  - Add device list table with detailed columns
  - Add device detail panel (sliding or modal)
  - _Requirements: 2.1, 2.2, 2.4, 2.5_

- [x] 6.2 Add mock device data
  - Create 12-15 sample devices with detailed properties
  - Add device metadata (OS, IP, last seen, risk score, etc.)
  - Implement clickable device rows (show detail panel)
  - Add bulk action buttons (visual only)
  - _Requirements: 2.4_

- [x] 6.3 Wire up interactivity
  - Initialize JavaScript modules
  - Connect help button and tooltips
  - Set page context to 'endpoint-inventory'
  - Add help icons to columns and actions
  - _Requirements: 3.1, 4.1, 7.1_

- [x] 7. Create landing page
  - Create `mock-site/index.html` as entry point
  - Add welcome message and POC overview
  - Add navigation cards linking to 3 main pages
  - Add instructions for using the demo
  - Style with Trend Micro branding
  - _Requirements: 1.1, 1.4_

- [x] 8. Update GitHub Actions deployment
  - Modify `.github/workflows/deploy.yml` to copy mock-site directory
  - Add step to copy `mock-site/*` to `trend-vision-one-docs/build/mock-site/`
  - Verify deployment preserves directory structure
  - Test that assets load correctly with correct paths
  - _Requirements: 9.1, 9.2, 9.3, 9.4, 9.5_

- [x] 9. Create documentation
  - Create `mock-site/README.md` with overview, setup, and usage instructions
  - Document the context key format and how to add new content
  - Create demo script showing key features and user flows
  - Add inline code comments (JSDoc) to all JavaScript modules
  - _Requirements: 10.1, 10.2, 10.3_

- [x] 10. Polish and refinement
  - Verify all pages load correctly and navigation works
  - Test help panel with different user types and pages
  - Test tooltips on all interactive elements
  - Verify responsive layout on different screen sizes
  - Check browser console for errors
  - Validate HTML and CSS
  - Test keyboard navigation (Tab, Enter, ESC)
  - Verify color contrast meets accessibility standards
  - _Requirements: 1.2, 1.3, 8.1, 8.2, 8.4_

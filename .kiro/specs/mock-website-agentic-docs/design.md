# Design Document: Mock Trend Vision One Website with Agentic Documentation

## Overview

This design document outlines the technical architecture for a mock Trend Vision One product website that demonstrates agentic (AI-powered, context-aware) documentation capabilities. The system consists of a static website with three product pages, integrated with the existing Docusaurus documentation site to provide personalized, role-based help content.

### Key Design Principles

1. **Simplicity First**: Use vanilla HTML/CSS/JavaScript to minimize dependencies and deployment complexity
2. **Static Deployment**: Deploy as static files to GitHub Pages alongside the existing documentation
3. **Progressive Enhancement**: Core functionality works without JavaScript; AI features enhance the experience
4. **Context Awareness**: Capture user role, current page, and interaction context to personalize documentation
5. **Reusable Components**: Build modular UI components that can be shared across all three pages

## Architecture

### High-Level Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                     GitHub Pages Hosting                     │
├─────────────────────────────────────────────────────────────┤
│                                                               │
│  ┌────────────────────────┐    ┌──────────────────────────┐ │
│  │   Mock Website         │    │  Docusaurus Docs Site    │ │
│  │   /mock-site/          │◄───┤  /                       │ │
│  │                        │    │                          │ │
│  │  • Attack Surface      │    │  • API Documentation     │ │
│  │  • Workbench           │    │  • User Guides           │ │
│  │  • Endpoint Inventory  │    │  • Reference Docs        │ │
│  └────────────────────────┘    └──────────────────────────┘ │
│              │                              │                 │
│              └──────────────┬───────────────┘                 │
│                             ▼                                 │
│                  ┌─────────────────────┐                      │
│                  │  Context Engine     │                      │
│                  │  (Client-side JS)   │                      │
│                  └─────────────────────┘                      │
│                             │                                 │
│                             ▼                                 │
│                  ┌─────────────────────┐                      │
│                  │  AI Content Gen     │                      │
│                  │  (Future: API/LLM)  │                      │
│                  └─────────────────────┘                      │
└─────────────────────────────────────────────────────────────┘
```

### Directory Structure

```
agentic-docs-poc/
├── mock-site/                          # Mock website root
│   ├── index.html                      # Landing/redirect page
│   ├── attack-surface.html             # Attack Surface Discovery page
│   ├── workbench.html                  # Workbench page
│   ├── endpoint-inventory.html         # Endpoint Inventory page
│   ├── assets/
│   │   ├── css/
│   │   │   ├── common.css              # Shared styles
│   │   │   ├── components.css          # Component styles
│   │   │   └── pages.css               # Page-specific styles
│   │   ├── js/
│   │   │   ├── context-engine.js       # Context detection & management
│   │   │   ├── help-panel.js           # Help panel component
│   │   │   ├── tooltip.js              # Tooltip component
│   │   │   ├── user-selector.js        # User type selector
│   │   │   ├── navigation.js           # Side nav & routing
│   │   │   └── content-generator.js    # AI content generation
│   │   └── data/
│   │       ├── help-content.json       # Static help content by context
│   │       └── user-profiles.json      # User type definitions
│   └── README.md                       # Mock site documentation
└── trend-vision-one-docs/              # Existing Docusaurus site
    └── ...
```

## Components and Interfaces

### 1. Page Layout Component

Each page shares a common layout structure:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta, title, CSS -->
</head>
<body>
    <!-- Top Header (logo, search, user selector, help button) -->
    <header class="top-header">
        <div class="logo-section">...</div>
        <div class="header-actions">
            <button id="helpButton">❓</button>
            <div id="userSelector">...</div>
        </div>
    </header>
    
    <!-- Side Navigation -->
    <nav class="side-nav">
        <a href="attack-surface.html">Attack Surface Discovery</a>
        <a href="workbench.html">Workbench</a>
        <a href="endpoint-inventory.html">Endpoint Inventory</a>
    </nav>
    
    <!-- Main Content Area -->
    <main class="main-content">
        <!-- Page-specific content -->
    </main>
    
    <!-- Help Panel (sliding from right) -->
    <aside id="helpPanel" class="help-panel">
        <div class="panel-header">
            <h2 id="helpTitle">Help</h2>
            <button id="closeHelp">×</button>
        </div>
        <div id="helpContent" class="panel-content">
            <!-- Dynamic content loaded here -->
        </div>
    </aside>
    
    <!-- Tooltip Bubble -->
    <div id="tooltipBubble" class="tooltip-bubble">
        <div class="tooltip-header">
            <span id="tooltipTitle"></span>
            <button id="tooltipClose">×</button>
        </div>
        <div id="tooltipContent"></div>
    </div>
    
    <!-- Scripts -->
    <script src="assets/js/context-engine.js"></script>
    <script src="assets/js/help-panel.js"></script>
    <script src="assets/js/tooltip.js"></script>
    <script src="assets/js/user-selector.js"></script>
    <script src="assets/js/navigation.js"></script>
    <script src="assets/js/content-generator.js"></script>
</body>
</html>
```

### 2. Context Engine

The Context Engine captures and manages user context for personalized documentation.

**Interface:**

```javascript
class ContextEngine {
    constructor() {
        this.context = {
            userType: 'admin',           // admin, analyst, ciso, viewer
            currentPage: '',             // attack-surface, workbench, endpoint-inventory
            currentSection: '',          // e.g., 'devices-tab', 'risk-score-panel'
            activeElement: null,         // Currently focused/hovered element
            timestamp: Date.now()
        };
    }
    
    // Get current context snapshot
    getContext() { ... }
    
    // Update context when user navigates or interacts
    updateContext(updates) { ... }
    
    // Set user type (from selector)
    setUserType(type) { ... }
    
    // Track page navigation
    setCurrentPage(page) { ... }
    
    // Track section/element interaction
    trackInteraction(element, action) { ... }
    
    // Generate context key for content lookup
    getContextKey() { ... }
}
```

**Context Keys Format:**

```
{userType}:{page}:{section}
Examples:
- admin:attack-surface:overview
- analyst:workbench:alert-details
- ciso:endpoint-inventory:compliance
```

### 3. Help Panel Component

Sliding panel that displays context-aware documentation.

**Interface:**

```javascript
class HelpPanel {
    constructor(contextEngine, contentGenerator) {
        this.contextEngine = contextEngine;
        this.contentGenerator = contentGenerator;
        this.isOpen = false;
    }
    
    // Open panel and load content
    open() { ... }
    
    // Close panel
    close() { ... }
    
    // Load content based on current context
    async loadContent() { ... }
    
    // Render content in panel
    renderContent(content) { ... }
    
    // Show loading state
    showLoading() { ... }
    
    // Show error state
    showError(message) { ... }
}
```

**Content Structure:**

```javascript
{
    title: "Attack Surface Discovery",
    badge: "AI",
    sections: [
        {
            type: "what-is",
            title: "What is this?",
            content: "Markdown or HTML content..."
        },
        {
            type: "how-to",
            title: "How to:",
            items: [
                "Configure new data sources",
                "Review device risk scores",
                "Export device inventory"
            ]
        },
        {
            type: "actions",
            buttons: [
                {
                    label: "💬 Chat with Companion",
                    action: "openChat",
                    primary: true
                },
                {
                    label: "📖 Open Full Documentation",
                    action: "openDocs",
                    url: "/docs/attack-surface"
                }
            ]
        }
    ],
    metadata: {
        generatedAt: "2025-11-13T10:30:00Z",
        contextKey: "admin:attack-surface:overview",
        sources: ["/docs/attack-surface", "/docs/admin-guide"]
    }
}
```

### 4. Tooltip Component

Contextual tooltips that appear on hover/click of help icons.

**Interface:**

```javascript
class TooltipManager {
    constructor(contextEngine) {
        this.contextEngine = contextEngine;
        this.activeTooltip = null;
    }
    
    // Show tooltip for element
    show(element, content, position) { ... }
    
    // Hide active tooltip
    hide() { ... }
    
    // Position tooltip relative to trigger element
    position(tooltipEl, triggerEl, preferredPosition) { ... }
    
    // Load tooltip content based on context
    async loadTooltipContent(tooltipKey) { ... }
}
```

### 5. User Type Selector

Dropdown for switching between user roles.

**Interface:**

```javascript
class UserSelector {
    constructor(contextEngine) {
        this.contextEngine = contextEngine;
        this.userTypes = [
            { id: 'admin', label: 'Admin User', description: 'Full system access' },
            { id: 'analyst', label: 'Security Analyst', description: 'Threat investigation' },
            { id: 'ciso', label: 'CISO', description: 'Executive oversight' },
            { id: 'viewer', label: 'Report Viewer', description: 'Read-only access' }
        ];
        this.currentType = 'admin';
    }
    
    // Render selector UI
    render() { ... }
    
    // Handle user type change
    onChange(newType) { ... }
    
    // Update UI to reflect current type
    updateDisplay() { ... }
}
```

### 6. Content Generator

Generates or retrieves personalized documentation content.

**Interface:**

```javascript
class ContentGenerator {
    constructor() {
        this.cache = new Map();
        this.contentSource = 'static'; // 'static' or 'api' or 'llm'
    }
    
    // Generate content for given context
    async generateContent(contextKey) { ... }
    
    // Fetch from static JSON files (Phase 1)
    async fetchStaticContent(contextKey) { ... }
    
    // Fetch from API (Phase 2 - future)
    async fetchFromAPI(contextKey) { ... }
    
    // Generate with LLM (Phase 3 - future)
    async generateWithLLM(context, docsContent) { ... }
    
    // Cache management
    getCached(key) { ... }
    setCached(key, content) { ... }
    clearCache() { ... }
}
```

## Data Models

### User Profile

```javascript
{
    id: "admin",
    label: "Admin User",
    description: "Full system access",
    permissions: ["configure", "manage", "view", "export"],
    focusAreas: ["configuration", "policy-management", "system-health"],
    documentationStyle: "technical-detailed"
}
```

### Context Object

```javascript
{
    userType: "admin",
    currentPage: "attack-surface",
    currentSection: "devices-overview",
    activeElement: {
        type: "tab",
        id: "devices-tab",
        label: "Devices"
    },
    breadcrumbs: ["Attack Surface Discovery", "Devices"],
    timestamp: 1699876543210,
    sessionId: "uuid-v4"
}
```

### Help Content

```javascript
{
    contextKey: "admin:attack-surface:devices",
    userType: "admin",
    page: "attack-surface",
    section: "devices",
    content: {
        title: "Device Management",
        badge: "AI",
        whatIs: {
            text: "The Devices view provides...",
            format: "markdown"
        },
        howTo: {
            items: [
                "Configure device sensors",
                "Review risk scores",
                "Export device list"
            ]
        },
        actions: [
            {
                type: "chat",
                label: "Chat with Companion",
                icon: "💬",
                primary: true
            },
            {
                type: "link",
                label: "Full Documentation",
                icon: "📖",
                url: "/docs/attack-surface/devices"
            }
        ],
        relatedTopics: [
            { title: "Risk Scoring", url: "/docs/risk-scoring" },
            { title: "Data Sources", url: "/docs/data-sources" }
        ]
    },
    metadata: {
        generatedAt: "2025-11-13T10:30:00Z",
        version: "1.0",
        sources: [
            "/docs/attack-surface",
            "/docs/admin-guide/devices"
        ]
    }
}
```

## Page Designs

### 1. Attack Surface Discovery Page

**Purpose**: Display discovered assets, risk scores, and data source status.

**Key Elements**:
- Top header with logo, search, user selector, help button
- Side navigation (persistent)
- Main tabs: Devices, Internet-Facing Assets, Accounts, Applications, Cloud Assets, APIs
- Left panel: Statistics cards (device counts, risk metrics)
- Center panel: Chart showing device trends over time
- Right panel: Data source status list
- Bottom section: Device list table with sortable columns
- Help icons on tabs (trigger tooltips)

**Simplified Implementation**:
- Static data for charts and tables
- Clickable tabs (visual state change only)
- Functional help button and tooltips
- Responsive layout (desktop-focused)

### 2. Workbench Page

**Purpose**: Threat investigation and alert management interface.

**Key Elements**:
- Same header and side nav structure
- Alert/incident list with severity indicators
- Filter panel (status, severity, date range)
- Alert detail view (expandable rows or modal)
- Investigation timeline
- Action buttons (Investigate, Close, Escalate)

**Simplified Implementation**:
- Mock alert data (5-10 sample alerts)
- Clickable alerts (expand/collapse details)
- Filter UI (visual only, no actual filtering)
- Help tooltips on key elements

### 3. Endpoint Inventory Page

**Purpose**: Comprehensive device inventory and management.

**Key Elements**:
- Same header and side nav structure
- Search and filter bar
- Device list table with detailed columns
- Device detail panel (sliding or modal)
- Bulk action buttons
- Export functionality (visual only)

**Simplified Implementation**:
- Mock device data (10-15 sample devices)
- Clickable device rows (show detail panel)
- Search box (visual only)
- Help tooltips on columns and actions

## Error Handling

### Client-Side Error Handling

```javascript
class ErrorHandler {
    // Handle content loading errors
    handleContentError(error, context) {
        console.error('Content loading failed:', error);
        
        // Show fallback content
        return {
            title: "Help Unavailable",
            content: "We're having trouble loading help content. " +
                     "Please visit the full documentation at " +
                     "<a href='/docs'>Documentation Site</a>",
            fallback: true
        };
    }
    
    // Handle network errors
    handleNetworkError(error) {
        // Show offline message
        // Attempt to use cached content
    }
    
    // Log errors for debugging
    logError(error, context) {
        // Send to console in development
        // Could send to analytics in production
    }
}
```

### Graceful Degradation

1. **No JavaScript**: Core navigation and content visible, help features disabled
2. **Content Load Failure**: Show fallback message with link to full docs
3. **Network Issues**: Use cached content if available
4. **Browser Compatibility**: Provide basic experience for older browsers

## Testing Strategy

### Manual Testing Checklist

**Navigation**:
- [ ] Side nav links work on all pages
- [ ] Active page highlighted in nav
- [ ] Browser back/forward buttons work
- [ ] URLs update correctly

**User Type Selector**:
- [ ] Dropdown opens/closes correctly
- [ ] User type changes reflected in UI
- [ ] Help content updates when user type changes
- [ ] Current user type displayed in header

**Help Panel**:
- [ ] Opens when help button clicked
- [ ] Closes when X clicked or ESC pressed
- [ ] Content loads within 2 seconds
- [ ] Scrolls correctly for long content
- [ ] Links to full docs work
- [ ] Different content for different contexts

**Tooltips**:
- [ ] Appear on hover/click of help icons
- [ ] Position correctly (don't go off-screen)
- [ ] Close when clicking outside
- [ ] Content adapts to user type
- [ ] Different content for different tabs/elements

**Responsive Design**:
- [ ] Layout works on desktop (1920x1080)
- [ ] Layout works on laptop (1366x768)
- [ ] Side nav collapses on smaller screens
- [ ] Tables scroll horizontally if needed

**Performance**:
- [ ] Pages load in < 2 seconds
- [ ] Help content loads in < 2 seconds
- [ ] No layout shift when content loads
- [ ] Smooth animations (panel slide, tooltip fade)

### Browser Testing

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)

### Accessibility Testing

- [ ] Keyboard navigation works (Tab, Enter, ESC)
- [ ] Focus indicators visible
- [ ] Screen reader compatible (ARIA labels)
- [ ] Color contrast meets WCAG AA standards
- [ ] Text resizable to 200%

## Deployment Strategy

### GitHub Pages Deployment

**Approach**: Deploy mock site to a subdirectory of the existing GitHub Pages site.

**URL Structure**:
```
https://eriktechwriter.github.io/agentic-docs-poc/           # Docusaurus docs
https://eriktechwriter.github.io/agentic-docs-poc/mock-site/ # Mock website
```

**Deployment Steps**:

1. Create `mock-site/` directory in repository root
2. Build mock site (no build step needed - static HTML/CSS/JS)
3. Update GitHub Actions workflow to copy `mock-site/` to build output
4. Deploy both docs and mock site together

**GitHub Actions Workflow Update**:

```yaml
# Add to existing .github/workflows/deploy.yml

- name: Copy mock site to build output
  run: |
    mkdir -p trend-vision-one-docs/build/mock-site
    cp -r mock-site/* trend-vision-one-docs/build/mock-site/

- name: Deploy to GitHub Pages
  uses: peaceiris/actions-gh-pages@v3
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    publish_dir: ./trend-vision-one-docs/build
```

### Deployment Validation

After deployment, verify:
- [ ] Mock site accessible at `/mock-site/`
- [ ] All pages load correctly
- [ ] Assets (CSS, JS, images) load correctly
- [ ] Links between pages work
- [ ] Links to docs site work
- [ ] No console errors

## Future Enhancements

### Phase 2: API Integration

Replace static content with API calls to a backend service:

```javascript
// content-generator.js
async fetchFromAPI(contextKey) {
    const response = await fetch('/api/help-content', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
            contextKey,
            userType: this.contextEngine.context.userType,
            page: this.contextEngine.context.currentPage
        })
    });
    return await response.json();
}
```

### Phase 3: LLM Integration

Integrate with OpenAI or other LLM for real-time content generation:

```javascript
async generateWithLLM(context, docsContent) {
    const prompt = `
        Generate help content for a ${context.userType} user 
        viewing the ${context.currentPage} page.
        
        Context: ${JSON.stringify(context)}
        
        Available documentation: ${docsContent}
        
        Format: JSON with title, whatIs, howTo sections
    `;
    
    const response = await fetch('https://api.openai.com/v1/chat/completions', {
        method: 'POST',
        headers: {
            'Authorization': `Bearer ${API_KEY}`,
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            model: 'gpt-4',
            messages: [{ role: 'user', content: prompt }]
        })
    });
    
    return await response.json();
}
```

### Phase 4: Analytics & Learning

Track user interactions to improve content:

```javascript
class AnalyticsTracker {
    trackHelpOpen(context) { ... }
    trackContentView(contextKey, duration) { ... }
    trackActionClick(action, context) { ... }
    trackUserFeedback(rating, context) { ... }
}
```

## Technical Constraints

1. **No Build Step**: Use vanilla HTML/CSS/JS to avoid build complexity
2. **Static Hosting**: Must work on GitHub Pages (no server-side code)
3. **Browser Support**: Modern browsers only (ES6+)
4. **File Size**: Keep total size under 5MB for fast loading
5. **Dependencies**: Minimize external dependencies (no frameworks)
6. **Accessibility**: Meet WCAG 2.1 AA standards
7. **Performance**: First Contentful Paint < 1.5s, Time to Interactive < 3s

## Security Considerations

1. **XSS Prevention**: Sanitize any user input or dynamic content
2. **Content Security Policy**: Set appropriate CSP headers
3. **HTTPS Only**: Ensure all resources loaded over HTTPS
4. **No Sensitive Data**: Mock site contains no real user data
5. **API Keys**: If using LLM, keys must be server-side only

## Documentation Requirements

### README.md for Mock Site

Include:
- Purpose and overview
- How to run locally
- How to deploy
- Architecture overview
- How to add new pages
- How to update help content
- Troubleshooting guide

### Code Documentation

- JSDoc comments for all functions
- Inline comments for complex logic
- README in each directory explaining contents

### Demo Script

Create a guided tour script:
1. Start on Attack Surface Discovery page
2. Switch user types and show content changes
3. Open help panel and explore content
4. Hover over help icons to show tooltips
5. Navigate to other pages
6. Demonstrate different contexts

## Success Metrics

### Technical Metrics

- Page load time < 2 seconds
- Help content load time < 2 seconds
- Zero console errors
- 100% of links working
- Passes accessibility audit

### User Experience Metrics

- Help content relevance (qualitative feedback)
- User type switching works smoothly
- Navigation is intuitive
- Visual design matches Trend Micro branding
- POC effectively demonstrates agentic documentation concept

## Conclusion

This design provides a solid foundation for building a mock Trend Vision One website that demonstrates agentic documentation capabilities. The architecture is simple, maintainable, and extensible, allowing for future enhancements while keeping the initial implementation focused and achievable.

The key innovation is the context-aware help system that adapts content based on user role and current page/section, providing a personalized documentation experience that goes beyond traditional static help systems.

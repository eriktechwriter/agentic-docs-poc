---
slug: trend-vision-one-fs-va-mountpoint-validation
title: NFS and SMB mount point parameter validation rules
---

This document contains the parameter validation rules for your NFS and SMB mount points.

### NFS path validation: /path {#nfs-path-validation-path}

**Required format**

- Must start with a forward slash `/`

- Examples: `/exports/shared`, `/backup`, `/home/users`, `/`

**Length requirements**

- Cannot be empty

- Maximum 4,096 characters

- Minimum is just `/` (root directory)

**Allowed characters**

- Letters (a-z, A-Z)

- Numbers (0-9)

- Special characters: hyphen `-`, underscore `_`, period `.`, space

- Forward slashes `/` for directory separation

**Prohibited elements**

- Cannot contain double slashes `//` anywhere in the path

- No null characters or control characters (invisible special characters)

- Cannot end with `/` unless it is only the root directory `/`

- No backslashes `\`

**Valid examples**

- `/exports/shared`

- `/backup`

- `/home/users`

- `/`

- `/data/projects/2024`

**Invalid examples**

- `exports/shared` (missing leading slash)

- `/exports//shared` (double slashes)

- `/exports/` (trailing slash)

- \`\` (empty)

- `/exports\shared` (backslash)

### SMB share validation: /share {#smb-share-validation-share}

**Required format**

- Must start with a forward slash `/`

- Only the share name, no subdirectories allowed

- Examples: `/SharedDocs`, `/Public`, `/Users`

**Length requirements**

- Share name cannot be empty (more than just `/`)

- Maximum 80 characters for the share name (plus the leading `/`)

**Allowed characters**

- Letters (a-z, A-Z)

- Numbers (0-9)

- Special characters: hyphen `-`, underscore `_`, period `.`, space

- Parentheses `()`, curly braces `{}`, exclamation `!`, at symbol `@`

- Hash `#`, dollar `$`, percent `%`, caret `^`, ampersand `&`

- Single quote `'`, tilde `~`

**Prohibited elements**

- No backslashes `\`, colons `:`, asterisks `*`

- No question marks `?`, quotation marks `"`

- No less than `<`, greater than `>`, pipe `|`

- No additional forward slashes after the first one (no subdirectories)

- Cannot use reserved Windows names: CON, PRN, AUX, NUL, COM1, COM2, COM3, LPT1, LPT2, LPT3

**Valid examples**

- `/SharedDocs`

- `/Public`

- `/Users`

- `/Backup_2024`

- `/Project Files`

**Invalid examples**

- `SharedDocs` (missing leading slash)

- `/Shared/Docs` (subdirectories not allowed)

- `/CON` (reserved name)

- `/Share*Name` (asterisk not allowed)

- `/Share:Name` (colon not allowed)

### Username validation {#username-validation}

**Length requirements**

- Cannot be empty

- Maximum 104 characters

**Allowed formats**

- Simple username: `john.doe`

- Domain format: `DOMAIN\username`

- Email format: `user@company.com`

**Allowed characters**

- Letters (a-z, A-Z)

- Numbers (0-9)

- Period `.`, hyphen `-`, underscore `_`

- At symbol `@` (for email format)

- Backslash `\` (only for domain\username format)

**Prohibited elements**

- No forward slashes `/`, colons `:`, asterisks `*`

- No question marks `?`, quotation marks `"`

- No less than `<`, greater than `>`, pipe `|`

- No leading or trailing spaces

- If using domain format, must be exactly `domain\username` (only one backslash)

- If using email format, must be valid email structure

**Valid examples**

- `john.doe`

- `DOMAIN\administrator`

- `user@company.com`

- `user123`

- `test-user`

**Invalid examples**

- `user/name` (forward slash not allowed)

- `user:name` (colon not allowed)

- \`\` (empty) ✗

- `username` (leading/trailing spaces)

- `domain\user\extra` (multiple backslashes)

### Password validation {#password-validation}

**Length requirements**

- Cannot be empty

- Maximum 256 characters

**Allowed characters**

- All printable characters are allowed

- Letters, numbers, symbols, spaces

- Special characters like `!@#$%^&*()_+-=[]{}|;:,.<>?`

**Prohibited elements**

- No null characters (invisible character that terminates strings)

- No control characters (special invisible formatting characters)

**Valid examples**

- `password123`

- `P@ssw0rd!`

- `simple`

- `very long password with spaces`

- `Complex!P@ssw0rd#2024`

**Invalid examples**

- \`\` (empty)

- Passwords containing invisible null or control characters

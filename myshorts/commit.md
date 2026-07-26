# 📘 Git Commit Style Guide

This guide establishes the standard for writing clear, professional, and automated-tool-friendly commit messages across this repository. We follow the **7 Standard Rules** combined with the **Conventional Commits** specification.

---

## 📋 The 7 Structural Rules

1. **Separate subject from body** with a single blank line.
2. **Limit the subject line** to 50 characters or fewer.
3. **Capitalize** the first letter of the subject line.
4. **Do not end** the subject line with a period.
5. **Use the imperative mood** in the subject line (e.g., "Add feature", not "Added feature" or "Adds feature").
6. **Wrap the body** at 72 characters for optimal readability in terminal logs.
7. **Explain _what_ and _why_** in the body, rather than _how_ (the code itself shows _how_).

---

## 🏗️ Commit Message Structure

```text
<type>(<optional scope>): <description>

[optional body]

[optional footer(s)]
```

### 1. Types (`<type>`)

Every commit must start with one of the following lowercase tags:

| Type       | Purpose                                                  | Production Release?      |
| :--------- | :------------------------------------------------------- | :----------------------- |
| `feat`     | A new user-facing feature or capability                  | Yes (Minor version bump) |
| `fix`      | A bug fix for the user or system                         | Yes (Patch version bump) |
| `docs`     | Changes exclusively to documentation (e.g., README)      | No                       |
| `style`    | Formatting, white-space, semi-colons (no logic changes)  | No                       |
| `refactor` | Code changes that neither fix a bug nor add a feature    | No                       |
| `perf`     | A code change that improves system performance           | Yes                      |
| `test`     | Adding missing test suites or correcting existing tests  | No                       |
| `chore`    | Build tasks, package dependencies, CI/CD, config changes | No                       |

### 2. Scope (`<scope>`)

An optional word enclosed in parentheses providing additional contextual information about where the change happened (e.g., `feat(auth):`, `fix(api):`, `docs(readme):`).

### 3. Breaking Changes (`!`)

If a change introduces a breaking API modification, append a `!` right after the type/scope, and include a `BREAKING CHANGE:` section in the footer.

- _Example:_ `feat(api)!: drop support for v1 endpoints`

---

## 💡 Practical Examples

### Simple Single-Line Commit

```bash
git commit -m "feat(payment): implement Stripe webhook validation"
```

### Complex Multi-Line Commit

```text
fix(auth): resolve JWT expiration validation edge case

Enforce strict UTC timestamp checking when decoding tokens. Previously,
local server time zones could cause tokens to pass verification up to
an hour after their designated expiration time.

Closes #402
```

### Breaking Change Commit

```text
refactor(db)!: migrate user profiles to UUIDs

Completely remove auto-incrementing integer IDs from the public API schema
to prevent enumeration attacks.

BREAKING CHANGE: The `id` field on all User API payloads is now a strict UUIDv4.
```

---

## 🛠️ Automated Setup (Optional)

To enforce these rules automatically before a commit is finalized, install `commitlint` and `husky`:

```bash
# Install tools
npm install --save-dev @commitlint/config-conventional @commitlint/cli husky

# Activate hooks
npx husky install
npx husky add .husky/commit-msg 'npx --no -- commitlint --edit "\${1}"'
```

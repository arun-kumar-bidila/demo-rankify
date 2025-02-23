<h3 align="center">Rankify App</h3>
## 📋 <a name="table">Table of Contents</a>
1. 🤸 [Quick Start](#quick-start)
2. 🔗 [Package Update](#Update)

## <a name="quick-start">🤸 Quick Start</a>

Follow these steps to set up the project locally on your machine.

**Prerequisites**

Make sure you have the following installed on your machine:

- [Node.js](https://nodejs.org/en)
- [Express.js](https://nodejs.org/en) ( backend Language )
- [MySQL](https://www.mysql.com/) ( Data Base )
- [Prisma ORM](https://www.prisma.io/) ( Object Relational Mapper )
- [Git](https://git-scm.com/)
- [npm](https://www.npmjs.com/) (Node Package Manager)

**Cloning the Repository**

```bash
git clone https://github.com/svk324/Rankify-App.git
cd Rankify-APP
#then
cd backend (For Backend Developement)
cd Frontend (For Frontend Developement)
```

**Installation**

Install the project dependencies using npm:

```bash
npm install
```

**Set Up Environment Variables**

Create a new file named `.env` in the root of your project and add the following content:

```env
# MySQL
DATABASE_URI=

```

Replace the placeholder values with your actual credentials. You can obtain these credentials by signing up on the respective websites

**Running the Project**

```bash
npm run dev
```

# Development Cycle for Rankify

Great to see you here! This guide will help you understand our development cycle.

## Table of Contents

- 📐 [Setting Up](#setting-up)
- 👩🏻‍💻[Development Workflow](#development-workflow)
- 🚩[Pull Request Guidelines](#pull-request-guidelines)
- 🧾 [Commit Message Guidelines](#commit-message-guidelines)
- 📜 [Tips for Smooth Collaboration](#Tips for Smooth Collaboration)

## Setting Up

1. **Install Required Tools**

   - Git ([Download](https://git-scm.com/downloads))
   - Node.js ([Download](https://nodejs.org/))
   - A code editor (We recommend VS Code)

2. **Set Up GitHub Account (Recommended)**

   ```bash
   # Configure your Git username and email
   git config --global user.name "Your Name"
   git config --global user.email "your.email@example.com"
   ```

3. **SSH Key Setup**

   ```bash
   # Generate SSH key
   ssh-keygen -t ed25519 -C "your.email@example.com"

   # Start SSH agent
   eval "$(ssh-agent -s)"

   # Add SSH key to agent
   ssh-add ~/.ssh/id_ed25519
   ```

   - Copy the public key content (`~/.ssh/id_ed25519.pub`)
   - Add it to your GitHub account (Settings → SSH Keys)

4. **Clone the Repository**

   ```bash
   # Clone via SSH (recommended)
   git clone git@github.com:svk324/Rankify-App.git

   # OR clone via HTTPS
   git clone https://github.com/svk324/Rankify-App.git

   # Navigate to project directory
   cd Rankify-App
   ```

5. **Set Up Development Environment**

   ```bash
   # Install dependencies
   npm install

   # Create and configure .env file
   cp .env.example .env
   # Edit .env with your credentials

   # Start development server
   npm run dev
   ```

## Development Workflow

1. **Create a New Branch**

   ```bash
   # Ensure you're on main and up-to-date
   git checkout main
   git pull origin main

   # Create and switch to a new branch
   git checkout -b feature/your-feature-name
   # OR
   git checkout -b fix/bug-description
   ```

2. **Make Your Changes**

   - Write your code
   - Test your changes locally
   - Ensure code style compliance

3. **Commit Your Changes**

   ```bash
   # Add changed files
   git add .

   # Commit with meaningful message
   git commit -m "feat: add new study material feature"
   ```

4. **Push Changes and Create PR**
   ```bash
   # Push your branch
   git push origin feature/your-feature-name
   ```
   - Go to GitHub and create a Pull Request
   - Fill in the PR template with necessary details

## Pull Request Guidelines

- **Title**: Use clear, descriptive titles

  - Format: `[Type] Brief description`
  - Example: `[Feature] Add PUC study materials section`

- **Description**:

  ```markdown
  ## Changes Made

  - Detailed list of changes
  - Impact on existing features

  ## Testing Done

  - How you tested the changes
  - Test results/screenshots

  ## Additional Notes

  - Any other relevant information
  ```

## Commit Message Guidelines

Follow the Conventional Commits specification:

```bash
# Format
type(scope): description

# Examples
feat(auth): add Google authentication
fix(ui): resolve mobile navigation issue
docs(readme): update installation steps
```

Types:

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes
- `refactor`: Code refactoring
- `test`: Testing changes
- `chore`: Maintenance tasks

### Resolve Conflicts (If Any)

- Steps:
  Edit conflicting files.

```bash
git add <file>
```

```bash
git commit
```

- Purpose: Fix overlaps with others’ work.

### Clean Up After Merge

```bash
   # Delete your branch
   git branch -d <your-feature>
```

    - Example: `git branch -d feature/add-login`
    - Purpose: Delete your branch locally after it’s merged.

## Tips for Smooth Collaboration

- **Small Commits**: Commit often with clear messages (e.g., "Fix login bug").
- **Pull Frequently**: Run `git pull origin main` daily to stay in sync.
- **Communicate**: Tell the team (e.g., via Slack) when you push or open a PR.
- **Review PRs**: Check teammates’ pull requests to catch issues early.

## Need Help?

- Reach out to project maintainers
- Check existing issues and pull requests

## <a name="Update">For update Packages:</a>

```bash
npx npm-check-updates
# then
npx npm-check-updates -u
# then
npm install
```

Happy Coding!

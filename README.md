<h3 align="center">Rankify App</h3>

<p align="center">
  Rankify is a full-stack application built with Flutter (frontend), Node.js with Express.js (backend), MySQL (database), and Prisma (ORM).
  This README guides you through setup, development, and releasing new versions using Git.
</p>

---

## 📋 Table of Contents

1. 🤸 [Quick Start](#quick-start)
2. 👩🏻‍💻 [Development Workflow](#development-workflow)
3. 🚀 [Releasing a New Version](#releasing-a-new-version)
4. 📦 [Package Updates](#package-updates)

---

## <a name="quick-start">🤸 Quick Start</a>

Set up the project locally with these steps.

### Prerequisites

Ensure you have the following installed:

- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/en) (includes npm)
- [Flutter](https://flutter.dev/docs/get-started/install)
- [MySQL](https://www.mysql.com/)
- A code editor (e.g., VS Code)

---

### Cloning the Repository

```bash
git clone https://github.com/vijay324/Rankify-App.git
cd Rankify-App
```

- **Frontend**: `cd flutter_app` (Flutter app directory).
- **Backend**: `cd backend` (Node.js/Express directory).

---

### Installation

#### Backend

```bash
cd backend
npm install
```

#### Frontend

```bash
cd flutter_app
flutter pub get
```

---

### Set Up Environment Variables

1. Create a `.env` file in the backend directory:

```env
# MySQL
DATABASE_URL="mysql://USER:PASSWORD@localhost:3306/DATABASE_NAME"
```

Replace `USER`, `PASSWORD`, and `DATABASE_NAME` with your MySQL credentials.

2. Initialize Prisma:

```bash
cd backend
npx prisma migrate dev --name init
```

---

### Running the Project

#### Backend

```bash
cd backend
npm run dev  # Starts Node.js/Express server
```

#### Frontend

```bash
cd flutter_app
flutter run  # Runs Flutter app (connect a device/emulator)
```

---

## <a name="development-workflow">👩🏻‍💻 Development Workflow</a>

We use a simplified Gitflow with two main branches:

- **main**: Stable, production-ready code.
- **develop**: Integration branch for new features and bug fixes.

---

### Steps

#### Update Local Branches:

```bash
git checkout main
git pull origin main
git checkout develop
git pull origin develop
```

# Branch Naming Guidelines

To keep our Git workflow consistent and organized, please follow these naming conventions for branches.

## Branch Naming Structure

All branch names should follow the format:

```
<type>/<short-description>
```

Where:
- `<type>`: The type of work being done (e.g., `feature`, `bugfix`, `hotfix`, `release`, `experiment`).
- `<short-description>`: A brief, clear description of the task or feature being worked on.

---

## Branch Types and Naming Conventions

### 1. **Feature Branches**
- **Purpose**: Used for developing new features.
- **Naming Convention**: 
  ```
  feature/<feature-name>
  ```
- **Example**:
  ```
  feature/user-login
  ```

### 2. **Bugfix Branches**
- **Purpose**: Used for fixing bugs or issues.
- **Naming Convention**: 
  ```
  bugfix/<issue-description>
  ```
- **Example**:
  ```
  bugfix/fix-header-alignment
  ```

### 3. **Hotfix Branches**
- **Purpose**: Used for urgent fixes that need to be deployed quickly.
- **Naming Convention**: 
  ```
  hotfix/<urgent-fix>
  ```
- **Example**:
  ```
  hotfix/crash-on-login
  ```

### 4. **Release Branches**
- **Purpose**: Used for preparing a new release.
- **Naming Convention**: 
  ```
  release/<version>
  ```
- **Example**:
  ```
  release/1.2.0
  ```

### 5. **Experiment Branches**
- **Purpose**: Used for experimental features or testing new ideas.
- **Naming Convention**: 
  ```
  experiment/<experiment-name>
  ```
- **Example**:
  ```
  experiment/new-auth-flow
  ```


### Best Practices

- **Be Descriptive, but Concise**: Choose names that clearly explain the purpose of the branch, but keep them short and to the point.
- **Use Hyphens**: Separate words with hyphens (`-`) for readability.
- **Use Lowercase Letters**: Stick to lowercase letters for consistency and ease of use.
- **Avoid Special Characters**: Stick to alphanumeric characters and hyphens.


## Create a Feature Branch:

```bash
git checkout develop
git checkout -b feature/add-login  # Replace with your feature name
```

#### Make Changes:

- **Frontend**: Edit Flutter code in `flutter_app/lib/`.
- **Backend**: Edit Node.js/Express code in `backend/`.

#### Test Locally:

```bash
cd flutter_app && flutter test
cd backend && npm test
```

#### Commit Changes:

Use Conventional Commits:

```bash
git add .
git commit -m "feat: add login UI and API endpoint"
```

#### Push and Create a Pull Request:

```bash
git push origin feature/add-login
```

Open a PR on GitHub from `feature/add-login` to `develop`.

Include a description (e.g., changes made, testing done).

#### Merge and Clean Up:

After PR approval, merge into `develop`.

Delete the branch:

```bash
git branch -d feature/add-login
```

---

## <a name="releasing-a-new-version">🚀 Releasing a New Version</a>

Release a new version (e.g., v1.1.0) from `develop` to `main` using **Semantic Versioning** (MAJOR . MINOR . PATCH).

### Steps

#### Prepare `develop`:

```bash
git checkout develop
git pull origin develop
```

#### Test Everything:

```bash
cd flutter_app && flutter test && flutter run
cd backend && npm test && node server.js
```

#### Merge to `main`:

```bash
git checkout main
git pull origin main
git merge --no-ff develop
```

#### Update Version Numbers:

- **Flutter** (`flutter_app/pubspec.yaml`):

```yaml
version: 1.1.0
```

```bash
cd flutter_app
git add pubspec.yaml
git commit -m "chore: bump Flutter version to 1.1.0"
```

- **Node.js** (`backend/package.json`):

```bash
cd backend
npm version minor  # Bumps to 1.1.0
```

#### Tag the Release:

```bash
git tag -a v1.1.0 -m "Release v1.1.0: Added login feature"
git push origin v1.1.0
```

#### Push to `main`:

```bash
git push origin main
```

#### Deploy:

- **Flutter**:

```bash
cd flutter_app
flutter build apk --release  # Or flutter build ios
```

Upload to app stores manually or via CI/CD.

- **Backend**:

```bash
cd backend
npx prisma migrate deploy
git push heroku main  # Or your deployment method
```

#### Sync `develop`:

```bash
git checkout develop
git merge --no-ff main
git push origin develop
```

---

## <a name="package-updates">📦 Package Updates</a>

Keep dependencies up-to-date:

#### For Backend:

```bash
# Check for updates
npx npm-check-updates

# Update package.json
npx npm-check-updates -u

# Install updated packages
npm install
```

#### For Flutter:

```bash
cd flutter_app
flutter pub upgrade
```

---

### Tips for Collaboration

- **Commit Often**: Use small, clear commits (e.g., `fix: resolve login bug`).
- **Pull Regularly**: Sync with `main` and `develop` daily.
- **Review PRs**: At least one teammate should review each PR.

Happy coding! Reach out to maintainers if you need help.

@echo off
setlocal enabledelayedexpansion
color 0A
title Rankify Git Manager Pro v1.0

:menu
cls
echo +==================================================+
echo ^|                                                  ^|
echo ^|          Rankify Git Project Manager             ^|
echo ^|     (c) SreeVia AI - All rights reserved      ^|
echo +==================================================+
echo ^|                                                  ^|
echo ^|  QUICK COMMANDS                                 ^|
echo ^|    1. Status check (short format)               ^|
echo ^|    2. Stage, commit and push                    ^|
echo ^|    3. Pull latest changes                       ^|
echo ^|    4. Configure user identity                   ^|
echo ^|    5. Check user identity                       ^|
echo ^|                                                  ^|
echo ^|  REPOSITORY MANAGEMENT                          ^|
echo ^|    6. Initialize repository                     ^|
echo ^|    7. Clone repository                          ^|
echo ^|    8. Setup/manage remotes                      ^|
echo ^|                                                  ^|
echo ^|  CHANGES AND COMMITS                            ^|
echo ^|    9. Add files to staging                      ^|
echo ^|   10. Commit changes                            ^|
echo ^|   11. Amend last commit                         ^|
echo ^|   12. Push/pull operations                      ^|
echo ^|   13. View changes in working directory         ^|
echo ^|                                                  ^|
echo ^|  BRANCHING                                      ^|
echo ^|   14. View branches                             ^|
echo ^|   15. Create/switch branch                      ^|
echo ^|   16. Merge branch                              ^|
echo ^|   17. Delete branch                             ^|
echo ^|                                                  ^|
echo ^|  HISTORY AND REVERSION                          ^|
echo ^|   18. View commit history                       ^|
echo ^|   19. View specific commit                      ^|
echo ^|   20. Revert/reset to commit                    ^|
echo ^|                                                  ^|
echo ^|  ADVANCED FEATURES                              ^|
echo ^|   21. Stash operations                          ^|
echo ^|   22. Create .gitignore file                    ^|
echo ^|   23. Create README.md                          ^|
echo ^|   24. CI/CD workflow setup                      ^|
echo ^|   25. Clean untracked files                     ^|
echo ^|                                                  ^|
echo ^|    0. Exit                                      ^|
echo ^|                                                  ^|
echo +==================================================+
echo.
set /p choice="Enter your choice: "

if "%choice%"=="0" goto exit
if "%choice%"=="1" goto quick_status
if "%choice%"=="2" goto stage_commit_push
if "%choice%"=="3" goto quick_pull
if "%choice%"=="4" goto config_user
if "%choice%"=="5" goto check_user
if "%choice%"=="6" goto init_repo
if "%choice%"=="7" goto clone
if "%choice%"=="8" goto remote_menu
if "%choice%"=="9" goto staging_menu
if "%choice%"=="10" goto commit
if "%choice%"=="11" goto amend_commit
if "%choice%"=="12" goto remote_ops
if "%choice%"=="13" goto view_changes
if "%choice%"=="14" goto view_branches
if "%choice%"=="15" goto branch_menu
if "%choice%"=="16" goto merge_branch
if "%choice%"=="17" goto delete_branch
if "%choice%"=="18" goto history
if "%choice%"=="19" goto view_commit
if "%choice%"=="20" goto reset_menu
if "%choice%"=="21" goto stash_menu
if "%choice%"=="22" goto gitignore
if "%choice%"=="23" goto create_readme
if "%choice%"=="24" goto github_actions
if "%choice%"=="25" goto clean_untracked

echo Invalid option. Please try again.
timeout /t 2 >nul
goto menu

:remote_menu
cls
echo +==================================================+
echo ^|               Remote Operations                  ^|
echo +==================================================+
echo.
echo 1. Setup new remote
echo 2. Check remote URLs
echo 3. Back to main menu
echo.
set /p remote_choice="Enter your choice: "
if "%remote_choice%"=="1" goto setup_remote
if "%remote_choice%"=="2" goto check_remote
if "%remote_choice%"=="3" goto menu
echo Invalid option. Going back to main menu.
timeout /t 2 >nul
goto menu

:staging_menu
cls
echo +==================================================+
echo ^|              Staging Operations                  ^|
echo +==================================================+
echo.
echo 1. Add all files to staging
echo 2. Add specific files to staging
echo 3. Back to main menu
echo.
set /p staging_choice="Enter your choice: "
if "%staging_choice%"=="1" goto add_all
if "%staging_choice%"=="2" goto add_specific
if "%staging_choice%"=="3" goto menu
echo Invalid option. Going back to main menu.
timeout /t 2 >nul
goto menu

:branch_menu
cls
echo +==================================================+
echo ^|              Branch Operations                   ^|
echo +==================================================+
echo.
echo 1. Create new branch
echo 2. Switch to branch
echo 3. Back to main menu
echo.
set /p branch_choice="Enter your choice: "
if "%branch_choice%"=="1" goto create_branch
if "%branch_choice%"=="2" goto switch_branch
if "%branch_choice%"=="3" goto menu
echo Invalid option. Going back to main menu.
timeout /t 2 >nul
goto menu

:remote_ops
cls
echo +==================================================+
echo ^|             Remote Sync Operations               ^|
echo +==================================================+
echo.
echo 1. Push to remote
echo 2. Pull from remote
echo 3. Fetch from remote
echo 4. Back to main menu
echo.
set /p remote_ops_choice="Enter your choice: "
if "%remote_ops_choice%"=="1" goto push
if "%remote_ops_choice%"=="2" goto pull
if "%remote_ops_choice%"=="3" goto fetch
if "%remote_ops_choice%"=="4" goto menu
echo Invalid option. Going back to main menu.
timeout /t 2 >nul
goto menu

:reset_menu
cls
echo +==================================================+
echo ^|             Reset/Revert Operations              ^|
echo +==================================================+
echo.
echo 1. Revert to previous commit
echo 2. Reset to specific commit
echo 3. Back to main menu
echo.
set /p reset_choice="Enter your choice: "
if "%reset_choice%"=="1" goto revert_commit
if "%reset_choice%"=="2" goto reset_commit
if "%reset_choice%"=="3" goto menu
echo Invalid option. Going back to main menu.
timeout /t 2 >nul
goto menu

:stash_menu
cls
echo +==================================================+
echo ^|              Stash Operations                    ^|
echo +==================================================+
echo.
echo 1. Stash changes
echo 2. Apply stashed changes
echo 3. List stashes
echo 4. Drop stash
echo 5. Back to main menu
echo.
set /p stash_choice="Enter your choice: "
if "%stash_choice%"=="1" goto stash_changes
if "%stash_choice%"=="2" goto apply_stash
if "%stash_choice%"=="3" goto list_stashes
if "%stash_choice%"=="4" goto drop_stash
if "%stash_choice%"=="5" goto menu
echo Invalid option. Going back to main menu.
timeout /t 2 >nul
goto menu

:quick_status
cls
echo +==================================================+
echo ^|                Quick Status Check                ^|
echo +==================================================+
echo.
git status --short
echo.
pause
goto menu

:stage_commit_push
cls
echo +==================================================+
echo ^|            Stage, Commit and Push                ^|
echo +==================================================+
echo.
echo Current status:
git status --short
echo.
echo Adding all changes to staging...
git add .
echo.
set /p message="Enter commit message: "
echo.
echo Committing changes...
git commit -m "%message%"
echo.
set /p should_push="Push to remote? (y/n): "
if /i "%should_push%"=="y" (
    set /p remote="Enter remote name (default: origin): "
    if "%remote%"=="" set remote=origin
    set /p branch="Enter branch name (default: current branch): "
    if "%branch%"=="" (
        echo Pushing to %remote%...
        git push %remote%
    ) else (
        echo Pushing to %remote%/%branch%...
        git push %remote% %branch%
    )
)
echo.
pause
goto menu

:quick_pull
cls
echo +==================================================+
echo ^|               Pull Latest Changes                ^|
echo +==================================================+
echo.
set /p remote="Enter remote name (default: origin): "
if "%remote%"=="" set remote=origin
echo Pulling latest changes from %remote%...
git pull %remote%
echo.
pause
goto menu

:config_user
cls
echo +==================================================+
echo ^|        Configure User Name and Email             ^|
echo +==================================================+
echo.
set /p username="Enter your Git username: "
set /p email="Enter your Git email: "
git config --local user.name "%username%"
git config --local user.email "%email%"
echo.
echo Username set to: %username%
echo Email set to: %email%
pause
goto menu

:check_user
cls
echo +==================================================+
echo ^|             Check User Identity                  ^|
echo +==================================================+
echo.
echo Current Git configuration:
echo.
echo User name:
git config user.name
echo.
echo User email:
git config user.email
echo.
pause
goto menu

:init_repo
cls
echo +==================================================+
echo ^|           Initialize New Repository              ^|
echo +==================================================+
echo.
git init -b main
echo.
echo Repository initialized with 'main' as default branch.
pause
goto menu

:clone
cls
echo +==================================================+
echo ^|              Clone Repository                    ^|
echo +==================================================+
echo.
set /p repo="Enter repository URL: "
set /p dir="Enter directory name (leave blank for default): "
if "%dir%"=="" (
    git clone %repo%
) else (
    git clone %repo% %dir%
)
echo.
pause
goto menu

:setup_remote
cls
echo +==================================================+
echo ^|                Setup Remote                      ^|
echo +==================================================+
echo.
set /p name="Enter remote name (default: origin): "
if "%name%"=="" set name=origin
set /p url="Enter remote repository URL: "
git remote add %name% %url%
echo.
echo Remote '%name%' added with URL: %url%
pause
goto menu

:check_remote
cls
echo +==================================================+
echo ^|              Check Remote URLs                   ^|
echo +==================================================+
echo.
git remote -v
echo.
echo.
set /p action="View details of specific remote? (y/n): "
if /i "%action%"=="y" (
    set /p remote="Enter remote name: "
    git remote show %remote%
)
echo.
pause
goto menu

:add_all
cls
echo +==================================================+
echo ^|           Add All Files to Staging               ^|
echo +==================================================+
echo.
git add .
echo.
echo All files have been added to staging area.
pause
goto menu

:add_specific
cls
echo +==================================================+
echo ^|          Add Specific Files to Staging           ^|
echo +==================================================+
echo.
echo Current status:
git status --short
echo.
set /p files="Enter file(s) to add (space-separated or pattern): "
git add %files%
echo.
echo Specified files have been added to staging area.
pause
goto menu

:commit
cls
echo +==================================================+
echo ^|                 Commit Changes                   ^|
echo +==================================================+
echo.
set /p message="Enter commit message: "
git commit -m "%message%"
echo.
pause
goto menu

:amend_commit
cls
echo +==================================================+
echo ^|                Amend Last Commit                 ^|
echo +==================================================+
echo.
set /p change_message="Change commit message? (y/n): "
if /i "%change_message%"=="y" (
    set /p message="Enter new commit message: "
    git commit --amend -m "%message%"
) else (
    git commit --amend --no-edit
)
echo.
echo Last commit amended.
pause
goto menu

:create_branch
cls
echo +==================================================+
echo ^|               Create New Branch                  ^|
echo +==================================================+
echo.
set /p branch="Enter branch name: "
git branch %branch%
echo.
echo Branch '%branch%' created.
set /p switch="Switch to new branch? (y/n): "
if /i "%switch%"=="y" (
    git checkout %branch%
    echo Switched to branch '%branch%'
)
pause
goto menu

:switch_branch
cls
echo +==================================================+
echo ^|               Switch to Branch                   ^|
echo +==================================================+
echo.
echo Available branches:
git branch
echo.
set /p branch="Enter branch name to switch to: "
git checkout %branch%
echo.
pause
goto menu

:pull
cls
echo +==================================================+
echo ^|              Pull from Remote                    ^|
echo +==================================================+
echo.
set /p remote="Enter remote name (default: origin): "
if "%remote%"=="" set remote=origin
set /p branch="Enter branch name (default: current branch): "
if "%branch%"=="" (
    git pull %remote%
) else (
    git pull %remote% %branch%
)
echo.
pause
goto menu

:fetch
cls
echo +==================================================+
echo ^|              Fetch from Remote                   ^|
echo +==================================================+
echo.
set /p remote="Enter remote name (default: origin): "
if "%remote%"=="" set remote=origin
git fetch %remote%
echo.
echo Fetched updates from %remote%.
pause
goto menu

:push
cls
echo +==================================================+
echo ^|               Push to Remote                     ^|
echo +==================================================+
echo.
set /p remote="Enter remote name (default: origin): "
if "%remote%"=="" set remote=origin
set /p branch="Enter branch name (default: current branch): "
if "%branch%"=="" (
    git push %remote%
) else (
    git push %remote% %branch%
)
echo.
pause
goto menu

:status
cls
echo +==================================================+
echo ^|                Check Status                      ^|
echo +==================================================+
echo.
git status
echo.
pause
goto menu

:history
cls
echo +==================================================+
echo ^|              View Commit History                 ^|
echo +==================================================+
echo.
set /p count="How many commits to show (leave blank for all): "
set /p pretty="Use pretty format? (y/n): "
if /i "%pretty%"=="y" (
    if "%count%"=="" (
        git log --pretty=format:"%%h - %%an, %%ar : %%s"
    ) else (
        git log -n %count% --pretty=format:"%%h - %%an, %%ar : %%s"
    )
) else (
    if "%count%"=="" (
        git log
    ) else (
        git log -n %count%
    )
)
echo.
pause
goto menu

:view_commit
cls
echo +==================================================+
echo ^|           View Specific Commit Details           ^|
echo +==================================================+
echo.
echo Recent commits:
git log -n 5 --pretty=format:"%%h - %%s"
echo.
echo.
set /p commit="Enter commit hash to view: "
git show %commit%
echo.
pause
goto menu

:revert_commit
cls
echo +==================================================+
echo ^|           Revert to Previous Commit              ^|
echo +==================================================+
echo.
echo Recent commits:
git log -n 5 --pretty=format:"%%h - %%s"
echo.
echo.
set /p commit="Enter commit hash to revert: "
git revert %commit%
echo.
echo Changes from commit %commit% have been reverted.
pause
goto menu

:reset_commit
cls
echo +==================================================+
echo ^|            Reset to Specific Commit              ^|
echo +==================================================+
echo.
echo WARNING: This operation can cause loss of work!
echo Recent commits:
git log -n 5 --pretty=format:"%%h - %%s"
echo.
echo.
set /p commit="Enter commit hash to reset to: "
echo.
echo Reset modes:
echo 1. Soft (keep changes staged)
echo 2. Mixed (keep changes but unstage them)
echo 3. Hard (discard all changes - DANGEROUS)
echo.
set /p mode="Select reset mode (1-3): "
if "%mode%"=="1" (
    git reset --soft %commit%
    echo Soft reset to %commit% completed.
) else if "%mode%"=="2" (
    git reset --mixed %commit%
    echo Mixed reset to %commit% completed.
) else if "%mode%"=="3" (
    set /p confirm="Are you sure you want to hard reset? All changes will be lost! (y/n): "
    if /i "!confirm!"=="y" (
        git reset --hard %commit%
        echo Hard reset to %commit% completed.
    ) else (
        echo Reset cancelled.
    )
) else (
    echo Invalid option. Reset cancelled.
)
echo.
pause
goto menu

:view_changes
cls
echo +==================================================+
echo ^|          View Changes in Working Directory       ^|
echo +==================================================+
echo.
echo 1. View unstaged changes
echo 2. View staged changes
echo 3. View all changes
echo.
set /p option="Select option (1-3): "
if "%option%"=="1" (
    git diff
) else if "%option%"=="2" (
    git diff --staged
) else if "%option%"=="3" (
    git diff HEAD
) else (
    echo Invalid option.
)
echo.
pause
goto menu

:view_branches
cls
echo +==================================================+
echo ^|               View All Branches                  ^|
echo +==================================================+
echo.
echo Local branches:
git branch
echo.
echo Remote branches:
git branch -r
echo.
echo All branches (local and remote):
git branch -a
echo.
pause
goto menu

:delete_branch
cls
echo +==================================================+
echo ^|                 Delete Branch                    ^|
echo +==================================================+
echo.
echo Local branches:
git branch
echo.
set /p branch="Enter branch name to delete: "
set /p force="Force delete (use if branch not fully merged)? (y/n): "
if /i "%force%"=="y" (
    git branch -D %branch%
) else (
    git branch -d %branch%
)
echo.
pause
goto menu

:merge_branch
cls
echo +==================================================+
echo ^|           Merge Branch into Current              ^|
echo +==================================================+
echo.
echo Current branch:
git branch --show-current
echo.
echo Available branches:
git branch
echo.
set /p branch="Enter branch name to merge into current branch: "
git merge %branch%
echo.
pause
goto menu

:stash_changes
cls
echo +==================================================+
echo ^|                Stash Changes                     ^|
echo +==================================================+
echo.
set /p message="Enter stash message (press Enter to skip): "
if "%message%"=="" (
    git stash
) else (
    git stash push -m "%message%"
)
echo.
echo Changes stashed.
pause
goto menu

:apply_stash
cls
echo +==================================================+
echo ^|             Apply Stashed Changes                ^|
echo +==================================================+
echo.
git stash list
echo.
set /p index="Enter stash index to apply (leave blank for most recent): "
set /p pop="Remove stash after applying? (y/n): "
if /i "%pop%"=="y" (
    if "%index%"=="" (
        git stash pop
    ) else (
        git stash pop stash@{%index%}
    )
    echo Stash applied and removed.
) else (
    if "%index%"=="" (
        git stash apply
    ) else (
        git stash apply stash@{%index%}
    )
    echo Stash applied (still in stash list).
)
echo.
pause
goto menu

:list_stashes
cls
echo +==================================================+
echo ^|                 List Stashes                     ^|
echo +==================================================+
echo.
git stash list
echo.
pause
goto menu

:drop_stash
cls
echo +==================================================+
echo ^|                  Drop Stash                      ^|
echo +==================================================+
echo.
git stash list
echo.
set /p index="Enter stash index to drop (leave blank for most recent): "
if "%index%"=="" (
    git stash drop
) else (
    git stash drop stash@{%index%}
)
echo.
echo Stash dropped.
pause
goto menu

:github_actions
cls
echo +==================================================+
echo ^|        Initialize GitHub Actions Workflow        ^|
echo +==================================================+
echo.
if not exist ".github\workflows" mkdir .github\workflows
echo Select workflow template:
echo 1. Node.js CI
echo 2. Python CI
echo 3. Java with Maven
echo 4. C++ with CMake
echo 5. Basic CI
echo.
set /p workflow="Enter workflow number: "

if "%workflow%"=="1" (
    echo # Node.js CI Workflow > .github\workflows\node.yml
    echo name: Node.js CI >> .github\workflows\node.yml
    echo. >> .github\workflows\node.yml
    echo on: >> .github\workflows\node.yml
    echo   push: >> .github\workflows\node.yml
    echo     branches: [ main ] >> .github\workflows\node.yml
    echo   pull_request: >> .github\workflows\node.yml
    echo     branches: [ main ] >> .github\workflows\node.yml
    echo. >> .github\workflows\node.yml
    echo jobs: >> .github\workflows\node.yml
    echo   build: >> .github\workflows\node.yml
    echo     runs-on: ubuntu-latest >> .github\workflows\node.yml
    echo. >> .github\workflows\node.yml
    echo     strategy: >> .github\workflows\node.yml
    echo       matrix: >> .github\workflows\node.yml
    echo         node-version: [14.x, 16.x, 18.x] >> .github\workflows\node.yml
    echo. >> .github\workflows\node.yml
    echo     steps: >> .github\workflows\node.yml
    echo     - uses: actions/checkout@v3 >> .github\workflows\node.yml
    echo     - name: Use Node.js ${{ matrix.node-version }} >> .github\workflows\node.yml
    echo       uses: actions/setup-node@v3 >> .github\workflows\node.yml
    echo       with: >> .github\workflows\node.yml
    echo         node-version: ${{ matrix.node-version }} >> .github\workflows\node.yml
    echo         cache: 'npm' >> .github\workflows\node.yml
    echo     - run: npm ci >> .github\workflows\node.yml
    echo     - run: npm run build --if-present >> .github\workflows\node.yml
    echo     - run: npm test >> .github\workflows\node.yml
    echo Node.js CI workflow created.
) else if "%workflow%"=="2" (
    echo # Python CI Workflow > .github\workflows\python.yml
    echo name: Python CI >> .github\workflows\python.yml
    echo. >> .github\workflows\python.yml
    echo on: >> .github\workflows\python.yml
    echo   push: >> .github\workflows\python.yml
    echo     branches: [ main ] >> .github\workflows\python.yml
    echo   pull_request: >> .github\workflows\python.yml
    echo     branches: [ main ] >> .github\workflows\python.yml
    echo. >> .github\workflows\python.yml
    echo jobs: >> .github\workflows\python.yml
    echo   build: >> .github\workflows\python.yml
    echo     runs-on: ubuntu-latest >> .github\workflows\python.yml
    echo     strategy: >> .github\workflows\python.yml
    echo       matrix: >> .github\workflows\python.yml
    echo         python-version: ["3.8", "3.9", "3.10"] >> .github\workflows\python.yml
    echo. >> .github\workflows\python.yml
    echo     steps: >> .github\workflows\python.yml
    echo     - uses: actions/checkout@v3 >> .github\workflows\python.yml
    echo     - name: Set up Python ${{ matrix.python-version }} >> .github\workflows\python.yml
    echo       uses: actions/setup-python@v4 >> .github\workflows\python.yml
    echo       with: >> .github\workflows\python.yml
    echo         python-version: ${{ matrix.python-version }} >> .github\workflows\python.yml
    echo     - name: Install dependencies >> .github\workflows\python.yml
    echo       run: ^| >> .github\workflows\python.yml
    echo         python -m pip install --upgrade pip >> .github\workflows\python.yml
    echo         pip install flake8 pytest >> .github\workflows\python.yml
    echo         if [ -f requirements.txt ]; then pip install -r requirements.txt; fi >> .github\workflows\python.yml
    echo     - name: Lint with flake8 >> .github\workflows\python.yml
    echo       run: ^| >> .github\workflows\python.yml
    echo         flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics >> .github\workflows\python.yml
    echo     - name: Test with pytest >> .github\workflows\python.yml
    echo       run: pytest >> .github\workflows\python.yml
    echo Python CI workflow created.
) else if "%workflow%"=="3" (
    echo # Java Maven CI Workflow > .github\workflows\maven.yml
    echo name: Java CI with Maven >> .github\workflows\maven.yml
    echo. >> .github\workflows\maven.yml
    echo on: >> .github\workflows\maven.yml
    echo   push: >> .github\workflows\maven.yml
    echo     branches: [ main ] >> .github\workflows\maven.yml
    echo   pull_request: >> .github\workflows\maven.yml
    echo     branches: [ main ] >> .github\workflows\maven.yml
    echo. >> .github\workflows\maven.yml
    echo jobs: >> .github\workflows\maven.yml
    echo   build: >> .github\workflows\maven.yml
    echo     runs-on: ubuntu-latest >> .github\workflows\maven.yml
    echo. >> .github\workflows\maven.yml
    echo     steps: >> .github\workflows\maven.yml
    echo     - uses: actions/checkout@v3 >> .github\workflows\maven.yml
    echo     - name: Set up JDK 11 >> .github\workflows\maven.yml
    echo       uses: actions/setup-java@v3 >> .github\workflows\maven.yml
    echo       with: >> .github\workflows\maven.yml
    echo         java-version: '11' >> .github\workflows\maven.yml
    echo         distribution: 'temurin' >> .github\workflows\maven.yml
    echo         cache: maven >> .github\workflows\maven.yml
    echo     - name: Build with Maven >> .github\workflows\maven.yml
    echo       run: mvn -B package --file pom.xml >> .github\workflows\maven.yml
) else if "%workflow%"=="4" (
    echo # C++ CMake CI Workflow > .github\workflows\cmake.yml
    echo name: C++ CI with CMake >> .github\workflows\cmake.yml
    echo. >> .github\workflows\cmake.yml
    echo on: >> .github\workflows\cmake.yml
    echo   push: >> .github\workflows\cmake.yml
    echo     branches: [ main ] >> .github\workflows\cmake.yml
    echo   pull_request: >> .github\workflows\cmake.yml
    echo     branches: [ main ] >> .github\workflows\cmake.yml
    echo. >> .github\workflows\cmake.yml
    echo jobs: >> .github\workflows\cmake.yml
    echo   build: >> .github\workflows\cmake.yml
    echo     runs-on: ubuntu-latest >> .github\workflows\cmake.yml
    echo. >> .github\workflows\cmake.yml
    echo     steps: >> .github\workflows\cmake.yml
    echo     - uses: actions/checkout@v3 >> .github\workflows\cmake.yml
    echo     - name: Configure CMake >> .github\workflows\cmake.yml
    echo       run: cmake -B ${{github.workspace}}/build -DCMAKE_BUILD_TYPE=Release >> .github\workflows\cmake.yml
    echo     - name: Build >> .github\workflows\cmake.yml
    echo       run: cmake --build ${{github.workspace}}/build --config Release >> .github\workflows\cmake.yml
    echo     - name: Test >> .github\workflows\cmake.yml
    echo       working-directory: ${{github.workspace}}/build >> .github\workflows\cmake.yml
    echo       run: ctest -C Release >> .github\workflows\cmake.yml
    echo C++ CMake CI workflow created.
) else if "%workflow%"=="5" (
    echo # Basic CI Workflow > .github\workflows\basic.yml
    echo name: Basic CI >> .github\workflows\basic.yml
    echo. >> .github\workflows\basic.yml
    echo on: >> .github\workflows\basic.yml
    echo   push: >> .github\workflows\basic.yml
    echo     branches: [ main ] >> .github\workflows\basic.yml
    echo   pull_request: >> .github\workflows\basic.yml
    echo     branches: [ main ] >> .github\workflows\basic.yml
    echo. >> .github\workflows\basic.yml
    echo jobs: >> .github\workflows\basic.yml
    echo   build: >> .github\workflows\basic.yml
    echo     runs-on: ubuntu-latest >> .github\workflows\basic.yml
    echo. >> .github\workflows\basic.yml
    echo     steps: >> .github\workflows\basic.yml
    echo     - uses: actions/checkout@v3 >> .github\workflows\basic.yml
    echo     - name: Run a one-line script >> .github\workflows\basic.yml
    echo       run: echo Hello, world! >> .github\workflows\basic.yml
    echo     - name: Run a multi-line script >> .github\workflows\basic.yml
    echo       run: ^| >> .github\workflows\basic.yml
    echo         echo Add other actions to build, >> .github\workflows\basic.yml
    echo         echo test, and deploy your project. >> .github\workflows\basic.yml
    echo Basic CI workflow created.
) else (
    echo Invalid option. No workflow created.
)
echo.
pause
goto menu

:gitignore
cls
echo +==================================================+
echo ^|            Create .gitignore File                ^|
echo +==================================================+
echo.
echo Select a template:
echo 1. Node.js
echo 2. Python
echo 3. Java
echo 4. C++
echo 5. React
echo 6. Angular
echo 7. Django
echo 8. Visual Studio
echo 9. Custom (create empty file)
echo.
set /p template="Enter template number: "

if "%template%"=="1" (
    echo # Node.js .gitignore > .gitignore
    echo node_modules/ >> .gitignore
    echo package-lock.json >> .gitignore
    echo yarn.lock >> .gitignore
    echo npm-debug.log* >> .gitignore
    echo yarn-debug.log* >> .gitignore
    echo yarn-error.log* >> .gitignore
    echo .env >> .gitignore
    echo .env.local >> .gitignore
    echo .env.development.local >> .gitignore
    echo .env.test.local >> .gitignore
    echo .env.production.local >> .gitignore
    echo .DS_Store >> .gitignore
    echo coverage/ >> .gitignore
    echo .nyc_output/ >> .gitignore
    echo dist/ >> .gitignore
    echo build/ >> .gitignore
) else if "%template%"=="2" (
    echo # Python .gitignore > .gitignore
    echo __pycache__/ >> .gitignore
    echo *.py[cod] >> .gitignore
    echo *$py.class >> .gitignore
    echo .env >> .gitignore
    echo venv/ >> .gitignore
    echo ENV/ >> .gitignore
    echo env/ >> .gitignore
    echo .venv/ >> .gitignore
    echo .Python >> .gitignore
    echo build/ >> .gitignore
    echo develop-eggs/ >> .gitignore
    echo dist/ >> .gitignore
    echo downloads/ >> .gitignore
    echo eggs/ >> .gitignore
    echo .eggs/ >> .gitignore
    echo lib/ >> .gitignore
    echo lib64/ >> .gitignore
    echo parts/ >> .gitignore
    echo sdist/ >> .gitignore
    echo var/ >> .gitignore
    echo *.egg-info/ >> .gitignore
    echo .installed.cfg >> .gitignore
    echo *.egg >> .gitignore
    echo .DS_Store >> .gitignore
    echo .pytest_cache/ >> .gitignore
) else if "%template%"=="3" (
    echo # Java .gitignore > .gitignore
    echo *.class >> .gitignore
    echo *.log >> .gitignore
    echo *.jar >> .gitignore
    echo *.war >> .gitignore
    echo *.ear >> .gitignore
    echo *.zip >> .gitignore
    echo *.tar.gz >> .gitignore
    echo *.rar >> .gitignore
    echo target/ >> .gitignore
    echo .classpath >> .gitignore
    echo .project >> .gitignore
    echo .settings/ >> .gitignore
    echo .idea/ >> .gitignore
    echo *.iml >> .gitignore
    echo *.iws >> .gitignore
    echo *.ipr >> .gitignore
    echo .DS_Store >> .gitignore
    echo .gradle/ >> .gitignore
    echo build/ >> .gitignore
    echo out/ >> .gitignore
) else if "%template%"=="4" (
    echo # C++ .gitignore > .gitignore
    echo *.o >> .gitignore
    echo *.obj >> .gitignore
    echo *.exe >> .gitignore
    echo *.out >> .gitignore
    echo *.app >> .gitignore
    echo *.dll >> .gitignore
    echo *.so >> .gitignore
    echo *.dylib >> .gitignore
    echo *.a >> .gitignore
    echo *.lib >> .gitignore
    echo .DS_Store >> .gitignore
    echo .vs/ >> .gitignore
    echo build/ >> .gitignore
    echo CMakeFiles/ >> .gitignore
    echo CMakeCache.txt >> .gitignore
    echo cmake_install.cmake >> .gitignore
    echo Makefile >> .gitignore
) else if "%template%"=="5" (
    echo # React .gitignore > .gitignore
    echo node_modules/ >> .gitignore
    echo npm-debug.log* >> .gitignore
    echo yarn-debug.log* >> .gitignore
    echo yarn-error.log* >> .gitignore
    echo .DS_Store >> .gitignore
    echo .env.local >> .gitignore
    echo .env.development.local >> .gitignore
    echo .env.test.local >> .gitignore
    echo .env.production.local >> .gitignore
    echo build/ >> .gitignore
    echo coverage/ >> .gitignore
    echo .idea/ >> .gitignore
    echo .vscode/ >> .gitignore
    echo *.sublime-project >> .gitignore
    echo *.sublime-workspace >> .gitignore
) else if "%template%"=="6" (
    echo # Angular .gitignore > .gitignore
    echo node_modules/ >> .gitignore
    echo npm-debug.log >> .gitignore
    echo yarn-error.log >> .gitignore
    echo .idea/ >> .gitignore
    echo .vscode/ >> .gitignore
    echo .DS_Store >> .gitignore
    echo Thumbs.db >> .gitignore
    echo .angular/ >> .gitignore
    echo dist/ >> .gitignore
    echo tmp/ >> .gitignore
    echo out-tsc/ >> .gitignore
    echo bazel-out/ >> .gitignore
    echo coverage/ >> .gitignore
) else if "%template%"=="7" (
    echo # Django .gitignore > .gitignore
    echo *.log >> .gitignore
    echo *.pot >> .gitignore
    echo *.pyc >> .gitignore
    echo __pycache__/ >> .gitignore
    echo local_settings.py >> .gitignore
    echo db.sqlite3 >> .gitignore
    echo db.sqlite3-journal >> .gitignore
    echo media/ >> .gitignore
    echo static/ >> .gitignore
    echo .env >> .gitignore
    echo venv/ >> .gitignore
    echo ENV/ >> .gitignore
    echo env/ >> .gitignore
    echo .DS_Store >> .gitignore
) else if "%template%"=="8" (
    echo # Visual Studio .gitignore > .gitignore
    echo .vs/ >> .gitignore
    echo .vscode/ >> .gitignore
    echo bin/ >> .gitignore
    echo obj/ >> .gitignore
    echo Debug/ >> .gitignore
    echo Release/ >> .gitignore
    echo x64/ >> .gitignore
    echo x86/ >> .gitignore
    echo [Bb]in/ >> .gitignore
    echo [Oo]bj/ >> .gitignore
    echo *.user >> .gitignore
    echo *.userosscache >> .gitignore
    echo *.suo >> .gitignore
    echo *.pdb >> .gitignore
    echo *.cache >> .gitignore
    echo *.dll >> .gitignore
    echo .DS_Store >> .gitignore
) else if "%template%"=="9" (
    echo # Custom .gitignore > .gitignore
    echo # Add your exclusion patterns here >> .gitignore
) else (
    echo Invalid option. Creating empty .gitignore file.
    echo # .gitignore > .gitignore
)

echo .gitignore file created.
pause
goto menu

:create_readme
cls
echo +==================================================+
echo ^|             Create GitHub README.md              ^|
echo +==================================================+
echo.
set /p title="Enter project title: "
echo # %title% > README.md
echo. >> README.md
echo ## Description >> README.md
echo Brief description of your project. >> README.md
echo. >> README.md
echo ## Features >> README.md
echo - Feature 1 >> README.md
echo - Feature 2 >> README.md
echo - Feature 3 >> README.md
echo. >> README.md
echo ## Installation >> README.md
echo ```bash >> README.md
echo # Installation steps here >> README.md
echo ``` >> README.md
echo. >> README.md
echo ## Usage >> README.md
echo ```bash >> README.md
echo # Usage examples here >> README.md
echo ``` >> README.md
echo. >> README.md
echo ## Contributing >> README.md
echo Contributions are welcome! Please feel free to submit a Pull Request. >> README.md
echo. >> README.md
echo ## License >> README.md
echo [MIT](LICENSE) >> README.md
echo.
echo Professional README.md file created.
pause
goto menu

:clean_untracked
cls
echo +==================================================+
echo ^|            Clean Untracked Files                 ^|
echo +==================================================+
echo.
echo WARNING: This will remove all untracked files!
echo.
echo 1. Dry run (show what would be deleted)
echo 2. Remove untracked files
echo 3. Remove untracked files and directories
echo.
set /p option="Select option (1-3): "
if "%option%"=="1" (
    git clean -n
    echo.
    echo Above files would be removed.
) else if "%option%"=="2" (
    set /p confirm="Are you sure you want to remove these files? (y/n): "
    if /i "!confirm!"=="y" (
        git clean -f
        echo.
        echo Untracked files have been removed.
    ) else (
        echo Operation cancelled.
    )
) else if "%option%"=="3" (
    set /p confirm="Are you sure you want to remove all untracked files AND directories? (y/n): "
    if /i "!confirm!"=="y" (
        git clean -fd
        echo.
        echo Untracked files and directories have been removed.
    ) else (
        echo Operation cancelled.
    )
) else (
    echo Invalid option.
)
echo.
pause
goto menu

:exit
cls
echo +==================================================+
echo ^|                                                  ^|
echo ^|    Thank you for using Git Project Manager!      ^|
echo ^|                                                  ^|
echo ^|    (c) SreeVia AI - All rights reserved      ^|
echo ^|                                                  ^|
echo +==================================================+
echo.
timeout /t 2 >nul
exit /b 0
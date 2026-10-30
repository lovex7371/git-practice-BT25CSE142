# Git Commands Reference

This file documents the Git commands used throughout the six practical exercises.

## 1. Check Git Version

```bash
git --version
```

Displays the installed Git version.

## 2. Configure Git

```bash
git config user.name "Love Gupta"
git config user.email "your-email@example.com"

git config --get user.name
git config --get user.email
```

Sets and verifies the repository-local username and email.

## 3. Check Repository Status

```bash
git status
```

Displays the current branch and the status of tracked, staged, modified, and untracked files.

## 4. Stage Files

```bash
git add README.md
git add file1.txt
git add .
```

Adds selected files or all changes to the staging area.

## 5. Commit Changes

```bash
git commit -m "Commit message"
```

Records staged changes in the repository.

## 6. View Commit History

```bash
git log --oneline
```

Displays the commit history in a compact format.

## 7. Inspect File Differences

```bash
git diff
git diff --staged
git diff HEAD
```

- `git diff`: Shows unstaged changes.
- `git diff --staged`: Shows staged changes.
- `git diff HEAD`: Shows all changes compared with the latest commit.

## 8. Run a Shell Script

```bash
bash greet.sh
```

Executes the greeting shell script.

## 9. Ignore Generated Files

```bash
git check-ignore -v filename
```

Displays the `.gitignore` rule responsible for ignoring a file.

## 10. Remote Repository Commands

```bash
git remote -v
git push -u origin main
```

Displays configured remote repositories and pushes the local main branch to GitHub.

---

**Author:** Love Gupta  
**Roll Number:** BT25CSE142  
**Section:** CSE C
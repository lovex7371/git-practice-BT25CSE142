# Exercise 06 – Ignore Generated Files

## Objective

Create a `.gitignore` file to exclude log files, temporary files, build directories, and environment configuration files from Git tracking.

## Commands Used

```bash
git check-ignore -v exercise-06/debug.log
git check-ignore -v exercise-06/temp.tmp
git check-ignore -v exercise-06/.env
git check-ignore -v exercise-06/build/app.txt
git status
```

## Output

See [output.txt](output.txt) for the terminal output.
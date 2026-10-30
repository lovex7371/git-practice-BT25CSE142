# Git Merge Conflict – Practical Explanation

## 1. What is a Merge Conflict?

A merge conflict occurs when Git cannot automatically combine changes from different branches.

In this exercise, we modified the same file (`message.txt`) differently in two branches. When we tried to merge them, Git detected conflicting changes.

## 2. How We Created the Conflict

Initially, the file contained:

```text
Hello from main
```

### Step 1: Created the first branch

```bash
git switch -c feature-a
```

Changed `message.txt` to:

```text
Hello from feature A
```

Committed the change:

```bash
git add exercise-07/message.txt
git commit -m "Change message in feature-a"
```

### Step 2: Created the second branch

Switched back to main and created another branch:

```bash
git switch main
git switch -c feature-b
```

Changed the same file to:

```text
Hello from feature B
```

Committed the change:

```bash
git add exercise-07/message.txt
git commit -m "Change message in feature-b"
```

## 3. How We Encountered the Conflict

Switched to `feature-a` and attempted to merge `feature-b`:

```bash
git switch feature-a
git merge feature-b
```

Git reported a merge conflict because both branches had modified the same file differently.

The conflicted file contained:

```text
<<<<<<< HEAD
Hello from feature A
=======
Hello from feature B
>>>>>>> feature-b
```

### Understanding the Conflict Markers

- `<<<<<<< HEAD`: Beginning of our current branch's changes (`feature-a`).
- `=======`: Separates the two conflicting versions.
- `>>>>>>> feature-b`: End of the incoming branch's changes.

## 4. How We Resolved the Conflict

We manually opened `message.txt` and decided to combine both changes.

We removed all conflict markers and replaced the content with:

```text
Hello from feature A and feature B
```

Then we staged and committed the resolved file:

```bash
git add exercise-07/message.txt
git commit -m "Exercise 07: Resolve merge conflict"
```

## 5. Final Result

The merge conflict was successfully resolved.

- Both branches' changes were considered.
- All conflict markers were removed.
- The resolved file was committed successfully.

**Conclusion:** Git requires manual intervention when it cannot automatically decide how to combine conflicting changes. After resolving the conflict, we must stage and commit the corrected file.
# Exercise 07 – Resolve a Merge Conflict

## Objective
Create a merge conflict by modifying the same file in two branches and resolve it manually.

## Steps Performed

1. Created the `feature-a` branch and modified `message.txt`.
2. Created the `feature-b` branch and modified the same file.
3. Merged `feature-b` into `feature-a`.
4. Git detected a merge conflict because both branches modified the same file.
5. Resolved the conflict manually by combining both changes.
6. Committed the resolved file.

## Conflict Resolution

Git displayed conflict markers:

```text
<<<<<<< HEAD
Hello from feature A
=======
Hello from feature B
>>>>>>> feature-b
```

Removed the markers and replaced the content with:

```text
Hello from feature A and feature B
```

## Result

Successfully resolved and committed the merge conflict.
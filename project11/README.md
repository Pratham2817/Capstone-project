# Project 11: Infra Changes with Branching Policy

## Goal
Follow a branching strategy: make infrastructure changes on a feature branch and merge into `main` only through a reviewed pull request.

## Tasks
- Create a feature branch
- Merge with PR review

## Branching strategy
| Branch | Purpose |
|---|---|
| `main` | Protected, stable branch. No direct pushes. |
| `feature/dns-config` | Short-lived branch for the infra change. |

## Steps

### 1. Protect `main`
Settings -> Branches -> branch protection rule for `main`:
- Require a pull request before merging
- Block force pushes
- Block branch deletion

### 2. Create the feature branch
```bash
git checkout main
git pull
git checkout -b feature/dns-config
```

### 3. Make the infra change
Added `project11/dns-config.md` documenting the DNS A record `webapp.lab.local -> 10.5.3.127` (from Project 10).
```bash
git add project11/dns-config.md
git commit -m "feat: add DNS config for webapp.lab.local"
git push -u origin feature/dns-config
```

### 4. Open the pull request
Base: `main`, compare: `feature/dns-config`.
PR: https://github.com/Pratham2817/Capstone-project/pull/2

### 5. Review and merge
- Reviewed the changed files in the PR and left a review comment.
- Merged with **Merge pull request** and deleted the feature branch.

### 6. Verify
```bash
git checkout main
git pull
git log --oneline --graph
```

## Screenshots
| Description | File |
|---|---|
| Branch protection rule | ![rule](screenshots/01-branch-protection.png) |
| Open pull request | ![PR](screenshots/02-open-pr.png) |
| PR review | ![review](screenshots/03-review.png) |
| Merged pull request | ![merged](screenshots/04-merged-pr.png) |

## Notes
- GitHub does not allow approving your own pull request, so the review was submitted as a comment and the rule requires 0 approvals. With a second reviewer, set required approvals to 1.

## Deliverables
- [x] Feature branch created
- [x] Merged through a reviewed PR
- [x] PR screenshots
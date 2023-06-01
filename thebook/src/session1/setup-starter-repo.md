## Setup Starter Repo
1. Open your Linux shell.
1. Define your project teams.
1. **Team**: Choose a team lead.
1. **Team Lead**: Fork the <a href="https://github.com/walquis/git-basics-starter-repo" target="_blank">starter repo</a>.  Choose a name for it: `solar-system`, for example.
1. **Team Lead**: Invite your team as collaborators to `solar-system`.
1. **Whole Team, including Team Lead**: Clone your team lead's repo (do NOT fork it!).
1. Run these commands to set up some handy aliases...
```bash
cd solar-system
source bin/git-aliases.sh
adog
```
1. Create a Personal Access Token, following <a href="https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token">these instructions</a>.  You can use "Classic", and choose "repo" scope.  Copy the token and save it somewhere safe.  **This is the password you'll use from the git command line when pushing.**

**Checkpoints**:

✅ Everyone (including team lead) has cloned their team lead's repo.

✅ Everyone has their aliases working. (Check by running `adog` as shown above).

✅ Everyone has created a Personal Access Token (PAT) and saved it.


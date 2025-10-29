# SQL Library <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Sql_data_base_with_logo.png/800px-Sql_data_base_with_logo.png?20210130181641" alt="PowerShell Logo" align="right" width="225"/>

A library of open-source [MIT][license]-licensed [SQL][sql] scripts written and maintained by `Ad Noctem Collective` for use with modern [SQL][sql] implementations and database engines. Refer to your database vendor’s [SQL Documentation (e.g. MySQL)][sql_docs] for more information on how these scripts work. Scripts meant for direct execution by the user, deployment tools, or other automation systems are located in the [`scripts`](scripts) directory. The [`lib`](lib) directory contains reusable SQL components, functions, or schema definitions meant to be shared across files or even different repositories via tools like [Git Submodules][git_submodules] or _contrib_ scripts like [git_subtree]. You may of course take a look at other repositories of ours for tips on how to achieve re-use.

## ✨ TL;DR

```pwsh
mysql -h localhost -u root database < ./scripts/sales-channels-update.sql
```

### 🔃 Contributing

Contributions are welcome via GitHub's Pull Requests. Fork the repository and implement your changes within the forked repository, after that you may submit a [Pull Request][gh_pr_fork_docs].

### 📥 Maintainers

This project is owned and maintained by [Ad Noctem Collective](https://github.com/adnoctem) refer to the [`AUTHORS`](.github/AUTHORS) or [`CODEOWNERS`](.github/CODEOWNERS) for more information. You may also use the linked contact details to reach out directly.

### ©️ Copyright

_Assets provided by:_ **[Wikimedia Commons][wikimedia]**

<!-- File references -->

[license]: LICENSE

<!-- General links -->

[wikimedia]: https://commons.wikimedia.org/wiki/Main_Page

[sql]: https://de.wikipedia.org/wiki/SQL

[sql_docs]: https://dev.mysql.com/doc/

[git_submodules]: https://git-scm.com/book/en/v2/Git-Tools-Submodules

[git_subtree]: https://www.atlassian.com/git/tutorials/git-subtree

[gh_pr_fork_docs]: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork

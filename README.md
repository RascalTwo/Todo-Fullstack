[frontend]: ../../../Todo-Frontend
[backend]: ../../../Todo-Backend
[dockerfile]: ../Dockerfile

# Todo Fullstack

![visitors](https://visitor-badge.glitch.me/badge?page_id=RascalTwo.Todo-Fullstack)
[![Heroku](https://github.com/RascalTwo/Todo-Fullstack/actions/workflows/main.yml/badge.svg?event=workflow_dispatch)](https://r2-todo-fullstack.herokuapp.com)

<details>
  <summary>Statistics</summary>

  ![GitHub language count](https://img.shields.io/github/languages/count/RascalTwo/Todo-Fullstack)
  ![GitHub top language](https://img.shields.io/github/languages/top/RascalTwo/Todo-Fullstack)
  ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/RascalTwo/Todo-Fullstack)
  ![Lines of code](https://img.shields.io/tokei/lines/github/RascalTwo/Todo-Fullstack)
</details>

<details>
  <summary>Repository</summary>

  ![GitHub issues](https://img.shields.io/github/issues/RascalTwo/Todo-Fullstack)
  ![GitHub closed issues](https://img.shields.io/github/issues-closed/RascalTwo/Todo-Fullstack)
  ![GitHub pull requests](https://img.shields.io/github/issues-pr/RascalTwo/Todo-Fullstack)
  ![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed/RascalTwo/Todo-Fullstack)
  ![GitHub last commit](https://img.shields.io/github/last-commit/RascalTwo/Todo-Fullstack)
</details>

<code><img alt="Git" title="Git" src="https://raw.githubusercontent.com/github/explore/main/topics/git/git.png" width="50" /></code>
<code><a href="../Dockerfile"><img alt="Docker" title="Docker" src="https://raw.githubusercontent.com/github/explore/main/topics/docker/docker.png" width="50" /></a></code>
<code><img alt="Heroku" title="Heroku" src="https://raw.githubusercontent.com/github/explore/main/topics/heroku/heroku.png" width="50" /></code>
<code><img alt="YAML" title="YAML" src="https://raw.githubusercontent.com/github/explore/main/topics/yaml/yaml.png" width="50" /></code>
<code><a href="../.github/workflows/main.yml"><img alt="GitHub Actions" title="GitHub Actions" src="https://raw.githubusercontent.com/github/explore/main/topics/actions/actions.png" width="50" /></a></code>
<code><img alt="GitHub" title="GitHub" src="https://raw.githubusercontent.com/github/explore/main/topics/github/github.png" width="50" /></code>

Combination of [Frontend][frontend] and [Backend][backend] as submodules for deployment purposes via [Docker][dockerfile].

The [Frontend][frontend] is first built, then the [Backend][backend], and finally the backend is started and served the [frontend] along with the actual API.

## Docker

The [Dockerfile][dockerfile] can be used to build the application for production, with the [Backend][backend] serving the [Frontend][frontend].

For development purposes, [Docker Compose](./docker-compose.yml) is also an option, starting both halves in development mode with a persistent Postgres database.

## Heroku

Deployment to [Heroku](../heroku.yml) is achieved using the [Dockerfile][dockerfile]

## GitHub Actions

A single [GitHub Action](../.github/workflows/main.yml) is used to automate the deployment to heroku, with the help of the [Heroku Deploy](https://github.com/AkhileshNS/heroku-deploy) action.

> Why are you using GitHub Actions to automate deployemnt and not Heroku?

At the time of writing, using Git submodules is only supported for builds triggered with direct pushes, [builds triggered via the Heroku GitHub API do not include the submodule contents](https://devcenter.heroku.com/articles/github-integration#does-github-integration-work-with-git-submodules)

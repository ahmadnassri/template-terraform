## Usage

#### GitHub Templates

> Automated through [`@ahmadnassri/action-template-repository-sync`][]

1. create a repository from the template
1. clone locally
1. update `colophon.yml`, `docs/README.md` with info about the project

## Local Automation

use [Docker Compose][docker compose] to run tasks locally:

- `docker compose run readme` to regenerate `README.md`
- `docker compose run lint` to execute [super-linter] locally

> **Note:**  
> Your main `README.md` file is in `docs/README.md`, the file at root is generated using [pandoc] using the provided [template][].  
>
> You should run `docker compose run readme` after any change to `docs/README.md` and before commit / push

[template]: ./docs/README.template
[pandoc]: https://pandoc.org/
[Docker Compose]: https://docs.docker.com/compose/
[super-linter]: https://github.com/github/super-linter
[`@ahmadnassri/action-template-repository-sync`]: https://github.com/ahmadnassri/action-template-repository-sync

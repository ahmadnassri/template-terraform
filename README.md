# Terraform Template

terraform project template

## Usage

#### GitHub Templates

> Automated through [`@ahmadnassri/action-template-repository-sync`][]

1.  create a repository from the template
2.  clone locally
3.  update `colophon.yml`, `docs/README.md` with info about the project

## Local Automation

use [Docker Compose][] to run tasks locally:

-   `docker compose run readme` to regenerate `README.md`
-   `docker compose run lint` to execute [super-linter][] locally

> **Note:**  
> Your main `README.md` file is in `docs/README.md`, the file at root is generated using [pandoc][] using the provided [template][].
>
> You should run `docker compose run readme` after any change to `docs/README.md` and before commit / push

  [`@ahmadnassri/action-template-repository-sync`]: https://github.com/ahmadnassri/action-template-repository-sync
  [Docker Compose]: https://docs.docker.com/compose/
  [super-linter]: https://github.com/github/super-linter
  [pandoc]: https://pandoc.org/
  [template]: ./docs/README.template

----
> Author: [Ahmad Nassri](https://www.ahmadnassri.com/) &bull;
> Twitter: [@AhmadNassri](https://twitter.com/AhmadNassri)

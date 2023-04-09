[![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge\&logo=ubuntu\&logoColor=white)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)
[![Public workflows that use this action.](https://img.shields.io/endpoint?style=for-the-badge\&url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fgit-cliff%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+git-cliff+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

[![CI](https://github.com/tj-actions/git-cliff/workflows/CI/badge.svg)](https://github.com/tj-actions/git-cliff/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/git-cliff/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/git-cliff/actions?query=workflow%3A%22Update+release+version.%22)

## git-cliff

Generate changelogs for your project with a generated cliff.toml from [`cliff-template.toml`](./cliff-template.toml) or provide a custom template. This eliminates the need to maintian multiple project config files.

## Features
*  Generates changelogs using [git-cliff](https://github.com/orhun/git-cliff).
*  Utilizes a generic [`cliff-template.toml`](./cliff-template.toml) for easy configuration.
*  Supports custom templates via file path or URL.
*  Dynamically replaces values via [Github context object](https://docs.github.com/en/actions/learn-github-actions/contexts)
*  Falls back to project's cliff.toml if one exists


## Usage

```yaml
...
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
        with:
          fetch-depth: 0
      - name: Run git-cliff
        uses: tj-actions/git-cliff@v1
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|      INPUT      |  TYPE  | REQUIRED |    DEFAULT     |                                                                                        DESCRIPTION                                                                                         |
|-----------------|--------|----------|----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|      args       | string |  false   | `"--verbose"`  |                                            Extra args passed directly to [git-cliff](https://github.com/orhun/git-cliff#command-line-arguments)                                            |
|     output      | string |  false   | `"HISTORY.md"` |                                                                                        Output file                                                                                         |
| template-config | string |  false   |                | Path or URL to the template<br> `cliff.toml` config file. See [`cliff-template.toml`](./cliff-template.toml) for a working example. **NOTE:** Only the<br>`REPOSITORY_URL` is substituted. |

<!-- AUTO-DOC-INPUT:END -->

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter) using [cookiecutter-action](https://github.com/tj-actions/cookiecutter-action)

*   [git-cliff](https://github.com/orhun/git-cliff)

## Report Bugs

Report bugs at https://github.com/tj-actions/git-cliff/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.

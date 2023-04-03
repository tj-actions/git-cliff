[![CI](https://github.com/tj-actions/git-cliff/workflows/CI/badge.svg)](https://github.com/tj-actions/git-cliff/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/git-cliff/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/git-cliff/actions?query=workflow%3A%22Update+release+version.%22)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fgit-cliff%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+git-cliff+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

## git-cliff

Generate changelogs for your project with a custom cliff.toml.

## Features

*   Utilizes the [`cliff-template.toml`](./cliff-template.toml) and dynamically replaces values via github context object and runs git-cliff
*   Provide your own custom template either via a file path or URL

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

| INPUT  |  TYPE  | REQUIRED |    DEFAULT     |                                             DESCRIPTION                                              |
|--------|--------|----------|----------------|------------------------------------------------------------------------------------------------------|
|  args  | string |  false   | `"--verbose"`  | Extra args passed directly to [git-cliff](https://github.com/orhun/git-cliff#command-line-arguments) |
| output | string |  false   | `"HISTORY.md"` |                                             Output file                                              |

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

[![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge\&logo=ubuntu\&logoColor=white)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)
[![Public workflows that use this action.](https://img.shields.io/endpoint?style=for-the-badge\&url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fgit-cliff%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+git-cliff+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)
[![CI](https://github.com/tj-actions/git-cliff/workflows/CI/badge.svg)](https://github.com/tj-actions/git-cliff/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/git-cliff/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/git-cliff/actions?query=workflow%3A%22Update+release+version.%22)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->

[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)

<!-- ALL-CONTRIBUTORS-BADGE:END -->

## git-cliff

Generate changelogs for your project with a generated cliff.toml from [`cliff-template.toml`](./cliff-template.toml) or provide a custom template. This eliminates the need to maintain multiple project cliff.toml files.

![screenzy-1682696580397](https://user-images.githubusercontent.com/17484350/235193271-13592c8a-1f3b-4606-9033-eed5d99ac8e1.png)

## Features

*   Generates changelogs using [git-cliff](https://github.com/orhun/git-cliff).
*   Utilizes a generic [`cliff-template.toml`](./cliff-template.toml) for easy configuration.
*   Supports custom templates via file path or URL.
*   Dynamically replaces values via [Github context object](https://docs.github.com/en/actions/learn-github-actions/contexts)
*   Falls back to project's cliff.toml if one exists

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

|                                     INPUT                                     |  TYPE  | REQUIRED |    DEFAULT     |                                                                                             DESCRIPTION                                                                                              |
|-------------------------------------------------------------------------------|--------|----------|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                 <a name="input_args"></a>[args](#input_args)                  | string |  false   | `"--verbose"`  |                                              Extra args passed directly to <br>[git-cliff](https://github.com/orhun/git-cliff#command-line-arguments)                                                |
|              <a name="input_output"></a>[output](#input_output)               | string |  false   | `"HISTORY.md"` |                                                                                             Output file                                                                                              |
| <a name="input_template-config"></a>[template-config](#input_template-config) | string |  false   |                | Path or URL to the <br>template `cliff.toml` config file. See <br>[`cliff-template.toml`](./cliff-template.toml) for a working example. <br>**NOTE:** Only the `REPOSITORY_URL` is <br>substituted.  |

<!-- AUTO-DOC-INPUT:END -->

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter) using [cookiecutter-action](https://github.com/tj-actions/cookiecutter-action)

*   [git-cliff](https://github.com/orhun/git-cliff)
*   [git-cliff-action](https://github.com/orhun/git-cliff-action)

## Report Bugs

Report bugs at https://github.com/tj-actions/git-cliff/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->

<!-- prettier-ignore-start -->

<!-- markdownlint-disable -->

<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://visualon.de"><img src="https://avatars.githubusercontent.com/u/1798109?v=4?s=100" width="100px;" alt="Michael Kriese"/><br /><sub><b>Michael Kriese</b></sub></a><br /><a href="https://github.com/tj-actions/git-cliff/commits?author=viceice" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->

<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

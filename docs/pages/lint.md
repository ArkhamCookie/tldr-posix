# Linting

There is a linter that enforces [page syntax](https://github.com/tldr-pages/tldr/blob/main/contributing-guides/style-guide.md).
It runs automatically on every pull request, but you can also install it to test your pages locally.

## Usage [^1]

```text
Usage: tldr-lint [options] <file|dir>

Options:
  -V, --version        output the version number
  -f, --format         also attempt formatting (to stdout, or as specified by -o)
  -o, --output <file>  output to formatted file
  -i, --in-place       formats in place
  -t, --tabular        format errors in a tabular format
  -v, --verbose        print verbose output
  -I, --ignore <codes> ignore comma separated tldr-lint error codes (e.g. "TLDR001,TLDR0014")
  -h, --help           display help for command
```

## Installation

<!-- #### pnpm -->
**[pnpm](https://pnpm.io):**

```text
pnpm install tldr-lint [ --global | --dev ]
```

<!-- #### npm -->
**[npm](https://docs.npmjs.org):**

```text
npm install tldr-lint [ --global | --dev ]
```

<!-- #### yarn -->

[^1]: https://github.com/tldr-pages/tldr/blob/main/pages/common/tldr-lint.md

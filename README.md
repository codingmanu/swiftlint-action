# GitHub Action for SwiftLint

This Action executes [SwiftLint](https://github.com/realm/SwiftLint) and generates annotations from SwiftLint Errors (not Warnings) on pull requests.

## Usage

Add the following as a GitHub Action workflow (for example, in: `.github/workflows/swiftlint.yml`) inside your repo.

```yaml
name: SwiftLint

on:
  pull_request:
    paths:
      - '.github/workflows/swiftlint.yml'
      - '.swiftlint.yml'
      - '**/*.swift'

jobs:
  SwiftLint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - name: GitHub Action for SwiftLint
        uses: codingmanu/swiftlint-action@master
```

## Author

Manuel Gomez [@codingManu](https://www.codingmanu.com)
Heavily based in and using parts of [Norio Nomura's GitHub Action for SwiftLint](https://github.com/norio-nomura/action-swiftlint)

## License

[MIT](LICENSE)


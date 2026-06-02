# homebrew-vstack

Homebrew tap for vstack.

This repository contains only Homebrew tap artifacts for distribution.
Source code, product documentation, and release policy live in the main
repository.

## Install

```bash
brew tap eschaar/vstack
brew install vstack
```

Alternative without prior tap:

```bash
brew install eschaar/vstack/vstack
```

## What Is In This Repository

- `Formula/vstack.rb`: Homebrew formula for `vstack`.
- `.github/workflows/formula-update.yml`: automation that updates the formula
    after a signed dispatch from the main release pipeline.

## Project Policies And Docs

- Main repository: [eschaar/vstack](https://github.com/eschaar/vstack)
- Contributing guide: [CONTRIBUTING.md](https://github.com/eschaar/vstack/blob/main/CONTRIBUTING.md)
- Security policy: [SECURITY.md](https://github.com/eschaar/vstack/blob/main/SECURITY.md)
- Changelog: [CHANGELOG.md](https://github.com/eschaar/vstack/blob/main/CHANGELOG.md)
- User docs: [docs/user/README.md](https://github.com/eschaar/vstack/blob/main/docs/user/README.md)

## Maintenance

This repository is updated automatically from the release pipeline in [eschaar/vstack](https://github.com/eschaar/vstack) through a signed `repository_dispatch` event.

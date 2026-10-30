# homebrew-tap

Personal Homebrew tap for [svclimb](https://github.com/svclimb)'s tools.

Formulas and casks here are generated and published automatically whenever a new release is
tagged in the source repository (formulas by [GoReleaser](https://goreleaser.com/), casks by the
source repository's release workflow) — don't edit versions or checksums by hand.

## Install

```bash
brew tap svclimb/tap
brew install kwatch
```

or in one line:

```bash
brew install svclimb/tap/kwatch
brew install --cask svclimb/tap/kubebar
```

## Tools

| Formula | Source |
|---|---|
| [`kwatch`](Formula/kwatch.rb) | [svclimb/kwatch](https://github.com/svclimb/kwatch) |

| Cask | Source |
|---|---|
| [`kubebar`](Casks/kubebar.rb) | [svclimb/KubeBar](https://github.com/svclimb/KubeBar) |

# Homebrew Tap for git-watchtower

This is a Homebrew tap for [git-watchtower](https://github.com/drummel/git-watchtower), a terminal-based Git branch monitoring tool designed for AI coding agents.

## Installation

```bash
brew install drummel/git-watchtower/git-watchtower
```

Installing by the fully-qualified name (`drummel/git-watchtower/git-watchtower`)
taps the repository and installs the formula in one step. As of Homebrew 6.0,
installing a formula by its fully-qualified name automatically trusts just that
formula — see [Homebrew Tap Trust](#homebrew-tap-trust) below.

### Tapping first (optional)

If you prefer to tap first and install by short name, trust the formula before it
will load:

```bash
brew tap drummel/git-watchtower
brew trust --formula drummel/git-watchtower/git-watchtower   # trust just this formula
brew install git-watchtower
```

To trust the whole tap (all current and future formulae in it) instead:

```bash
brew trust drummel/git-watchtower
```

## Homebrew Tap Trust

Homebrew 6.0 (June 2026) introduced [Tap Trust](https://docs.brew.sh/Tap-Trust):
third-party taps must be explicitly trusted before Homebrew evaluates their Ruby
code. This is a per-user, client-side security decision — there is nothing a tap
can do to mark itself as trusted, by design.

If you installed git-watchtower before upgrading to Homebrew 6.0, your first
`brew upgrade` may fail with:

```
Error: Refusing to load formula drummel/git-watchtower/git-watchtower from untrusted tap drummel/git-watchtower.
```

Trust the formula once and upgrades work normally from then on:

```bash
brew trust --formula drummel/git-watchtower/git-watchtower
```

## Usage

After installation, run:

```bash
git-watchtower
```

For more details on usage and configuration, see the [main project repository](https://github.com/drummel/git-watchtower).

## Updating

```bash
brew update
brew upgrade git-watchtower
```

> If this is your first upgrade after moving to Homebrew 6.0, run
> `brew trust --formula drummel/git-watchtower/git-watchtower` once first — see
> [Homebrew Tap Trust](#homebrew-tap-trust) above.

## Issues

- For issues with the formula or installation via Homebrew, please [open an issue in this repository](https://github.com/drummel/homebrew-git-watchtower/issues).
- For issues with git-watchtower itself, please [open an issue in the main repository](https://github.com/drummel/git-watchtower/issues).

## License

The formula in this repository is MIT licensed. See the [main project](https://github.com/drummel/git-watchtower) for the git-watchtower license.

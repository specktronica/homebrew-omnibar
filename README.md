# Specktronica Omnibar

Homebrew tap for [Omnibar](https://github.com/specktronica/omnibar), a Windows-style taskbar for macOS.

## Install

```bash
brew install --cask specktronica/omnibar/omnibar
```

macOS 14 or later. After install, grant Accessibility in System Settings. Screen Recording is optional (live hover thumbnails).

## Updating the cask

After publishing a GitHub Release of `Omnibar-<version>.zip` from the app repo:

1. Set `version` in `Casks/omnibar.rb` to the new marketing version.
2. Set `sha256` to the SHA-256 printed by `make release`.
3. Commit and push this tap.

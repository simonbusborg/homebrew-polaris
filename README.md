# Homebrew tap for Polaris

[Polaris](https://github.com/simonbusborg/polaris) is a menu bar app that
shows your Polestar's battery, range and charging state.

```bash
brew install --cask simonbusborg/polaris/polaris
```

The cask is updated automatically by the Polaris release workflow, so a new
version appears here shortly after it's tagged. The app also updates itself
through Sparkle — whichever you prefer.

Your Polestar credentials live in the login Keychain, not in Homebrew's
prefix; `brew uninstall --zap --cask polaris` removes the app's preferences
but deliberately leaves the Keychain item alone.

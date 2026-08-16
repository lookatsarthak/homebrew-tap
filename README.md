# lookatsarthak/tap

Homebrew tap for [NotchFun](https://github.com/lookatsarthak/NotchFun) — a clipboard
manager, media controller, calendar and file shelf that lives in the MacBook notch.

```bash
brew install --cask lookatsarthak/tap/notchfun
```

## First launch

NotchFun is not notarised by Apple, so macOS will refuse to open it the first time and
say it "could not verify NotchFun is free of malware". That is what macOS says about any
app distributed outside the App Store without a paid Apple Developer account.

Homebrew quarantines cask installs by default, so you will still see it. Either:

```bash
brew install --cask --no-quarantine lookatsarthak/tap/notchfun
```

or install normally and then approve it once in **System Settings → Privacy & Security →
Open Anyway**.

## Updating

NotchFun updates itself through Sparkle, so `brew upgrade` is not required — though the
cask is kept current with each release.

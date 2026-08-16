# lookatsarthak/tap

Homebrew tap for [NotchFun](https://github.com/lookatsarthak/NotchFun) — a clipboard
manager, media controller, calendar and file shelf that lives in the MacBook notch.

```bash
brew install --cask lookatsarthak/tap/notchfun
```

## First launch

NotchFun is not notarised by Apple, so macOS blocks it the first time and says it
"could not verify NotchFun is free of malware". macOS says this about **any** app
distributed outside the App Store without a paid Apple Developer account — it is not a
finding about this app.

Homebrew quarantines cask installs, so you will see it here too. Two ways past it:

**Approve it once in System Settings** (the normal route)

1. Double-click NotchFun, then click **Done** — *not* Move to Bin.
2. **System Settings → Privacy & Security**, scroll to **Security**.
3. Next to "NotchFun was blocked to protect your Mac", click **Open Anyway**.

**Or clear the quarantine flag yourself**

```bash
xattr -dr com.apple.quarantine /Applications/NotchFun.app
```

Only needed once, either way.

## Updating

NotchFun updates itself through Sparkle, so `brew upgrade` isn't required — but the cask
is kept in step with each release.

## Uninstalling

```bash
brew uninstall --cask notchfun          # remove the app
brew uninstall --zap --cask notchfun    # ...and its settings and clipboard history
```

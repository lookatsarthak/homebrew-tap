cask "notchfun" do
  version "1.7.0"
  sha256 "858616d86fec32778ba1e9ef354e1252fa50b4976d9d8a1544c42efe910a9d11"

  # Goes through NotchFun's own backend, which counts the install (anonymously) and
  # redirects to this version's disk image on GitHub Releases.
  url "https://notchfun.lookatsarthak.workers.dev/brew/#{version}"
  name "NotchFun"
  desc "Clipboard manager, media controller, calendar and file shelf in the MacBook notch"
  homepage "https://lookatsarthak.github.io/NotchFun/"

  livecheck do
    url "https://github.com/lookatsarthak/NotchFun"
    strategy :github_latest
  end

  # Updates itself through Sparkle, so Homebrew should not fight it.
  auto_updates true
  depends_on macos: :tahoe

  app "NotchFun.app"

  uninstall quit: "io.github.lookatsarthak.notchfun"

  caveats <<~EOS
    NotchFun isn't notarised by Apple, so macOS asks once before the first launch:
    open NotchFun, click Done, then System Settings → Privacy & Security → Open Anyway.
  EOS

  zap trash: [
    "~/Library/Application Support/NotchFun",
    "~/Library/Caches/io.github.lookatsarthak.notchfun",
    "~/Library/Containers/io.github.lookatsarthak.notchfun",
    "~/Library/HTTPStorages/io.github.lookatsarthak.notchfun",
    "~/Library/Preferences/io.github.lookatsarthak.notchfun.plist",
    "~/Library/Saved Application State/io.github.lookatsarthak.notchfun.savedState",
  ]
end

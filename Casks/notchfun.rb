cask "notchfun" do
  version "1.0.0"
  sha256 "f5b1490a0e15291d1d7cf38533f041376324b859eddc301057e19799f8839c23"

  url "https://github.com/lookatsarthak/NotchFun/releases/download/v#{version}/NotchFun-#{version}.dmg",
      verified: "github.com/lookatsarthak/NotchFun/"
  name "NotchFun"
  desc "Clipboard manager, media controller, calendar and file shelf in the MacBook notch"
  homepage "https://github.com/lookatsarthak/NotchFun"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Updates itself through Sparkle, so Homebrew should not fight it.
  auto_updates true
  depends_on macos: :sonoma

  app "NotchFun.app"

  uninstall quit: "io.github.lookatsarthak.notchfun"

  zap trash: [
    "~/Library/Application Support/NotchFun",
    "~/Library/Caches/io.github.lookatsarthak.notchfun",
    "~/Library/Containers/io.github.lookatsarthak.notchfun",
    "~/Library/HTTPStorages/io.github.lookatsarthak.notchfun",
    "~/Library/Preferences/io.github.lookatsarthak.notchfun.plist",
    "~/Library/Saved Application State/io.github.lookatsarthak.notchfun.savedState",
  ]
end

cask "clashxr" do
  version "1.17.1"
  sha256 "a04f0fa50ca871ebcfe21898c69326a0f2f793970503eb298ddd54fd7757d0c4"

  url "https://github.com/WhoJave/clashX/releases/download/v#{version}/clashXR.dmg"
  name "ClashXR"
  desc "A rule based custom proxy with GUI for Mac base on clash."
  homepage "https://github.com/WhoJave/clashX/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ClashXR.app"

  uninstall delete:    [
    "/Library/PrivilegedHelperTools/com.west2online.ClashX.ProxyConfigHelper",
    "/Library/LaunchDaemons/com.west2online.ClashXR.ProxyConfigHelper.plist",
  ],
            launchctl: "com.west2online.ClashXR.ProxyConfigHelper",
            quit:      "com.west2online.ClashXR"

  zap trash: [
    "~/Library/Application Support/com.west2online.ClashXR",
    "~/Library/Cookies/com.west2online.ClashXR.binarycookies",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.west2online.ClashXR",
    "~/Library/Caches/com.west2online.ClashXR",
    "~/Library/Caches/com.crashlytics.data/com.west2online.ClashXR",
    "~/Library/Preferences/com.west2online.ClashX.plist",
    "~/Library/Logs/ClashXR",
    "~/.config/clash/",
  ]
end

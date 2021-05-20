cask "rustdesk" do
  version "1.1.4"
  sha256 "6508980f6b3b2f7837c42c737ba5247b7c197ea2db463d76bf0fc1f55143d032"

  url "https://github.com/rustdesk/rustdesk/releases/download/#{version}/rustdesk-#{version}.dmg"
  appcast "https://github.com/rustdesk/rustdesk/releases.atom"
  name "RustDesk"
  desc "The Best Open Source Remote Desktop Client Software"
  homepage "https://rustdesk.com/"

  depends_on macos: ">= :sierra"

  app "RustDesk.app"
end

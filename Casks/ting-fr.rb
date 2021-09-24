cask "ting-fr" do
  version "9.2.0"
  sha256 "3b0b47870ab4650e4efd3ca83fa21bd10eb7917caff3c6040eac70b3847db26a"

  url "https://static.frdic.com/pkg/ting_fr/ting_fr.dmg",
      user_agent: :fake
  appcast "https://www.eudic.net/v4/fr/app/history?appkey=eusoft_ting_fr",
          must_contain: version
  name "每日法语听力"
  homepage "https://www.eudic.net/v4/fr/app/ting"

  depends_on macos: ">= :sierra"

  auto_updates true

  app "每日法语听力.app"
end

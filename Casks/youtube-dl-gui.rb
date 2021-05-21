cask "youtube-dl-gui" do
  version "2.1.3"
  sha256 :no_check

  url "https://github.com/jely2002/youtube-dl-gui/releases/download/v#{version}/YouTube-Downloader-GUI-#{version}.dmg"
  appcast "https://github.com/jely2002/youtube-dl-gui/releases.atom"

  name "youtube-dl-gui"
  desc "A GUI for the YouTube-dl library"

  homepage "https://github.com/jely2002/youtube-dl-gui"
  depends_on macos: ">= :sierra"

  app "YouTube Downloader GUI.app"
end

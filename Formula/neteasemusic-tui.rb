class NeteasemusicTui < Formula
    desc "Netease Cloud Music Terminal Client yy Rust."
    homepage "https://github.com/betta-cyber/netease-music-tui"
    version "0.1.3"
    if OS.mac?
      url "https://github.com/betta-cyber/netease-music-tui/releases/download/v#{version}/netease-music-tui-macos.tar.gz"
      sha256 "1c406e4b25fed0aead62eaa2ec1def6afe21fb46a149c4939ef7f0a87519c3a8"
    elsif OS.linux?
      url "https://github.com/betta-cyber/netease-music-tui/releases/download/v#{version}/netease-music-tui-linux.tar.gz"
      sha256 "3fec2fa6c565c307dd2a3d57e5505459fda401ff949b818d42e26f4e211f0dbb"
    end

    def install
      bin.install "ncmt"
      ohai "You're done! Run with \"ncmt\""
      ohai "If you want to configure NCMT, by default NCMT looks for a file in ${HOME}/.config/netease-music-tui/Settings.toml"
    end
end

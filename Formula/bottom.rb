class Bottom < Formula
  desc "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features."
  homepage "https://github.com/ClementTsang/bottom"
  version "0.6.1"
  if OS.mac?
    url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-apple-darwin.tar.gz"
    sha256 "9d3a25d3123bffd5f050f7ad3ee07c6f373eb98922784124848524849d4674ba"
  elsif OS.linux?
    url "https://github.com/ClementTsang/bottom/releases/download/#{version}/bottom_x86_64-unknown-linux-musl.tar.gz"
    sha256 "b20df11479df9c60959dc28df3a2892d289d11facd96319a1be23c2aefa6bb52"
  end

  def install
    bash_completion.install "completion/btm.bash"
    zsh_completion.install "completion/_btm"
    fish_completion.install "completion/btm.fish"
    bin.install "btm"
    ohai "You're done! Run with \"btm\""
    ohai "For runtime flags, see \"btm --help\""
    ohai "If you want to configure bottom, by default bottom looks for a file in $HOME/Library/Application Support/bottom.toml or $HOME/.config/bottom/bottom.toml"
  end
end

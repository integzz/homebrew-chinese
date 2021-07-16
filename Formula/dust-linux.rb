class DustLinux < Formula
  desc "More intuitive version of du in rust"
  homepage "https://github.com/bootandy/dust"
  version "0.5.3"
  url "https://github.com/bootandy/dust/releases/download/v#{version}/dust-v#{version}-i686-unknown-linux-gnu.tar.gz"
  sha256 "89ecd9f1c9f48f400f0d06ae4cca6502367b8d2e3dc6e575a2b3b489180c12d4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/\d+.+?\./, shell_output("#{bin}/dust -n 1"))
  end
end

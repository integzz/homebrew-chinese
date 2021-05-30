class Dust < Formula
  desc " More intuitive version of du in rust "
  homepage "https://github.com/bootandy/dust"
  url "https://github.com/bootandy/dust/releases/download/v0.5.3/dust-v0.5.3-i686-unknown-linux-gnu.tar.gz"
  sha256 "89ecd9f1c9f48f400f0d06ae4cca6502367b8d2e3dc6e575a2b3b489180c12d4"

  def install
    bin.install "dust"
  end

  test do
    assert true
  end
end

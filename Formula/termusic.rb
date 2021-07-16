class Termusic < Formula
    desc "Terminal Music Player written in Rust"
    homepage "https://github.com/tramhao/termusic"
    version "0.2.7"
    url "https://github.com/tramhao/termusic/archive/refs/tags/v#{version}.tar.gz"
    sha256 "cb93b87f4a057d808abae5adf309b4e76c3b4ad4f1eb0476cdf8d4a5330450d5"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      assert_match(/\d+.+?\./, shell_output("#{bin}/dust -n 1"))
    end
  end

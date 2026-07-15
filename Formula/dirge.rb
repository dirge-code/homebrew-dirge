class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.7"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.7/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "44afee2303fb4623f8dc50fb824e3f73bfc11c778d3ce038c7a3d2b7608c4b80"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.7/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "ca9945bd56129e6ad5915e4744b216960efff65b053c6aa88e884a3c4765ca58"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.7/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3594f916a6f99b203e14093e1e0b1373f9c51b537ace3504292aa4760a9d4b87"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

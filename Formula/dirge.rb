class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.12"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.12/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "ffa05fa359f1622901a19fa411439a7f64622b95d8781a6905d0317fe05f31de"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.12/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "6763cf15d088bbb64d88cafed6512a1163fb46c97606f2ba61da4827f7a276b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.12/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "223a7fdac3db23a738c7935c2d8255f4fdbd532e73746c5f6d29a56c9dec8103"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

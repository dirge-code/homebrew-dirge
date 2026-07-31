class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.29"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.29/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "cb903a20a2ccf834bd7ceffce5625faeb6bc4f2610b7f5b7d9aa522db25204b8"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.29/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "14d093871a38f2236353877976f65b1d0446aa3098d3582c98cf9b109d898ea9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.29/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "151c75e0b1434e083edcc8e1758282903fa16fbb251263194cb3dd7cd312de8d"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

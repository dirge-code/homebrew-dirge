class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.27.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.27.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "2b51c3b4b3e6dda837056ff4fb5e7b7d3464cde58cba11835aaa13b490ee1ef5"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.27.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "12962cc79148a52810476fe5392956ce5b6aab112abfbfca1db760ca2b082179"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.27.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3d84917d6f2d07a4221fcf15981b8165f9acf4ae870146dfeb3e10845ed77b5"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

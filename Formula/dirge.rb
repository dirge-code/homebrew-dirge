class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.21"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.21/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "03e1eb876163c172e4679540e9e0b9e6c4781510d3ace13ee7ca95832632e7a7"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.21/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "8eb68b2d02f3c66bb65fa99e13d226bd4a84f8d7cd3e5f9bf86416b480dd8e1d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.21/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "096bc099c46a15822817f9a0a39c97b58982c16caeb1c0dd088e2c28eef9b1bf"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

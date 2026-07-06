class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.9"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.9/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "28a88716f59588c22c920cf66a5ab979dcfc73b71fdb74df102bb128d4fc7dc8"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.9/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "266760dda83b7155e80eca063f8dd6174ff48bdf8f2a589cef940c9504cc7177"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.9/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67701a299505cbfd39a5ebb0caaa2cc0a6a8c8f92eb93f303565c613c9c9408e"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

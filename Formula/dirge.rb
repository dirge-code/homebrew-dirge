class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.14.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.14.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "be93df948cb479b85a123969600f0b6d267c96bffd2df7dd847f433abbd6bd3a"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.14.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "b256f1e6017b115d0d4f37a1caad4b10c19007a87c61a408862de105259627c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.14.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd207618e4aa4e7e141a3daa146498f8de2ea4fd7885c2600112ddff592d5c00"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

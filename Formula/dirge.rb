class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.17"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.17/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "ec6c256c67a1bcf2fff0ca628afe7ccd7ef4e4b3aa02bcd33dcaf18b6589b59f"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.17/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "de99043ebf1fa8c23d39d7bda14d9bb7f7f87f095484c28b3e87b58de9c7e9ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.17/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f6acab434a78816289d281392ccc0e2cd29f81dea23fce5c9a0f2e0b8792dcd8"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

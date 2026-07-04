class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "adf600e46cd49111bfa8209db8bd986b0e2c6a2b1e0c1f2b21550b9ebbd7b692"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "7e1fc62b7cc6bd6997a2b457739641bcd5da1a72b43bc89c6a1b4925a466b707"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7e25f27c87754f830f45210b18502a5c384f5e98ee2a0c9542553b407d7992c"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.5.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.5.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "PASTE_FROM_.sha256"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.5.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "PASTE_FROM_.sha256"
    end
  end

  on_linux do
    url "https://github.com/dirge-code/dirge/releases/download/v0.5.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PASTE_FROM_.sha256"
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1", 0)
  end
end

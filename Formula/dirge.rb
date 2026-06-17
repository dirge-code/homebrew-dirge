class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.7.7"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.7/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "b592eea1cdc679705cf3f48f9825e59ab61d7aa79b619560905bf5767e25d457"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.7/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "2dd8c8359f5ebede7c7042f62801522d06e8db1e5cefafa58769438065a401bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.7/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51e03f1df65d3bf1200920c35b8b27620c40e61fc56ae213234e862cf83f9eb9"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

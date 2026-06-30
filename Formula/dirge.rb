class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.14.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.14.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "10405e930d33d6f30bdd023a21a4d88f1ebabf1d7b92be54cc4acd75a74086be"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.14.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "b92f8c3ff20432db00c77526552d7309769126f5466a193d5de46fa5557d3440"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.14.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92610458d36b979d206c61aa55f8a0ac318932c26598e453c577c7e7bb4e4006"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

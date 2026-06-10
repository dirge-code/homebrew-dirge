class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.5.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.5.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "c8d88b8b605953bf8f72512cbfd96f51f8507a8d005344163b4681e6a416c4b7"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.5.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "cab338fba0cb54252f56f9f3f11ee10cc74a5688f5755f21f62dee7f45da6839"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.5.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "088d5896bcb83b35b1868d5a9d1890a5d0fbcf87636682208b8de9e996562e02"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

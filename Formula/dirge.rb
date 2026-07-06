class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.6"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.6/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "11b7db08e4e5dd578da7ee03246d3ca3c42ea96edaf6df0a3e5043e1fcdae693"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.6/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "bf23653bcf6c3b4a93dc2733ddf49b65b7f356b49c4559107d25f1437b446866"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.6/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b81e269df183f7607ab5865210d6087402a3ad3f8e82061e9b912ab7a7ed971"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

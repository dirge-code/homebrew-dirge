class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.15.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.15.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "9ee462d518bdf7e8354792dbdb968c8ccb8b8d83f9828fa863650d4ad8ade5bb"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.15.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "61e28327c3f99ead48c9359fc271655cb9138f52c3990f63fa448b2f4f35f179"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.15.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "20e069f9a214673fde53326d88095c93f656326b0d87a10b7e55f47fe953bafb"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

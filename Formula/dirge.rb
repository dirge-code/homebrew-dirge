class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.15"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.15/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "5c50ef20f952fc8120e6cc6e88d8ad6aa62682cd589b363e7a254bd245fe2236"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.15/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "0f17bb170f40db54ffde779cee9459975270619f95bf4852ffb68a0f35d9221e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.15/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3885df878c93ff08059c2f47c16f5d69fdf798953d33fe24975352e1463a2c85"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

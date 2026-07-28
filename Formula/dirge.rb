class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.26"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.26/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "5eeb7689c2836c234aac7d647e099f1324f3ac61b8c671f591c64c2a9c7d3b55"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.26/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "135dfe7cd4c73569fe32facab3d9b0c250d8d65412a766db528ad44559becc39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.26/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4666bc2db003de9f330b2944a7dbf165ef0685c5c65181565f3fca370ff2e212"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

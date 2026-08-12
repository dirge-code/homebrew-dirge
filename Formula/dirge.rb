class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.18"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.18/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "b38bad85b60a790adc1ef139c2c7699f6a09d659ad69f0542d08f9b17bf12deb"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.18/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "64d7b1cbd6966b4f46eb76db393a492266d6654ceef54d1b0c937a89ea9b99fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.18/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09fba4fc5e44777f749e74ffeaeeecba000fc8b3c51fd9268d4e7b1747034c15"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

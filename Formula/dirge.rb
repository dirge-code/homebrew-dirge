class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.6.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "6a3d9b0547f3ab1888b1a8cb9a1bc8705363e9ab5e33ee3d59b70fc7b394c0c2"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "0d1554997c97d8b8cd679091f0ba05dd826bac1bae1a637df61dda1aecd3f598"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d32d82a6a65bc94f186de4904314189fc05d23c257881d5dccd7a35948b3a41"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

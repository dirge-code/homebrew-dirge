class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.6"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.6/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "3ad9fa6477de2d180360ad631e534213403c8a353d43aaa8d8a274e55d36be01"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.6/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "316a08b3e5b1bc3e834598eb2e3de4679c503421f50d5ae8b3a06cb3f6e618d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.6/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64c60d57fd7925d0864aefbcaaff0aaaf634f5863f7377c6a2d71873ff54a991"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

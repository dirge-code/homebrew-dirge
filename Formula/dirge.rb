class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "fe986184d2d409c5f34469295ace9bdde84a9f4b2e2c530756a6212026cfb568"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "b4f80ea6c75a6304f1a7d4aff8eaec76163f5ad72df74f048bcf5ec249243d98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84bef7ed45c18c87108eab2fad3d1e766bbb48ebba6487516882a98e620d4b7c"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

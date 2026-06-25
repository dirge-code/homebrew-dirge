class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.12.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "823f21e3b94f8f0919fedbdbee07777d09248979abdde1cb63d0347094855d9e"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "1b2156367c95236829ac1e9f2a48e55ef3750fa215ec6c6fb07c06365a18639e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db944e0612e0c6cf2e7c64451e75465024f983649552771038b7bd32b93fb077"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

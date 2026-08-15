class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.22.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.22.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "b0723246adbdd1a6e9a6c4f9e975d6ebca3d8d851d7b761db3c065bcf366b5c9"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.22.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "809cb9e082a8017038716a4aea4e271a4bd7a974b727e1ebcad91749eb4b9164"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.22.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e12cbbd9a7775e3d8ec740bf6adeabc1ece5aab8a4f17f4809f049171af52ee3"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.15"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.15/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "6b33b7b7b6aaee356d25e85191e937cafc1666bcc792886aa44e1af767a4bc99"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.15/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "2e739f41a83fc7b51ae3df796f1fd9c5732ed906bc7285578d820810a5578e9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.15/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9103680282f46bd22929faef24af14ee86474823b7089d8e9f31e062ec69347a"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

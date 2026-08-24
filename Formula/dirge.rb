class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.25.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "99cbea511a037d7b0564b955d8c84d5c1a3a1d04d408bb4926c486d6007996ff"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "51de49c2dcd78f2bf7af3f5e4cffc09fae70c0b7c670cc386f3b25f1d6409022"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f1c84eaa59fd765c0188ee4676dec6acbc7c254631abbb0ca7681447a782904"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

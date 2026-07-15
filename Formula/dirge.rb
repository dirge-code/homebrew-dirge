class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.8"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.8/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "83894dd52b7b9893a9469538e958c9470a6cbc27f722e087b47e27afbf234dd5"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.8/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "431e4874063a56a487093f9edee717c308b1acef409ff94265ce37a1438dac35"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.8/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1997ce02d71db2d0346380e5cb9fe1331b0a68bd46b93afc27bd47f6b107c741"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

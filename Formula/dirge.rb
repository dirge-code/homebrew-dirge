class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.7.5"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.5/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "f1b603ea72046fc7b3a795e2ec5ce7224b0c1790c49b133f1d698cb45501c3dd"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.5/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "c31ae55be5d03d0c521c24185348315c24f992b23571e84c4704963540fa10c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.5/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17deec5fcf8bd15bf124923a36f326d8a7d24136a95be70601c43987f733ab30"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

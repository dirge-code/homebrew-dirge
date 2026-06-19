class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.8.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.8.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "653de35e5d4e7272b8f7696882de1cb3f678016b3f8f20620d0d72a1d9d3985e"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.8.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "b5af3325b05bcc8cb3804464326ac7511847c12d484b0188ff628dcfc05c0704"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.8.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4fda42de0be72376555eab222d72f2fccb7401df3fc8c7aa33116d8828cbe3f1"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

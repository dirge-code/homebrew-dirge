class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.16"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.16/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "03d2c8ee372efea2bc0805099236b52489f792b9a881985f10a1a8f1b166e336"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.16/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "fc7683d01d41f04fe510ed7f91b911ac54e04808eef9ff00a7cc3e0027ff167b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.16/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "802e4c3c4b22af8b885ee76a88f548ce24227eddb9edfe88dc1db1bf8461b977"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

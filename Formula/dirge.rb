class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.18"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.18/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "e28535a98e08b63f51eac13b1cb7c7657d6f3463326e080a3f75706529af9099"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.18/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "7339c8e43d1c9ff80e4a0192e12e344b73064eea61b14aa30385ef70137d3524"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.18/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7181708f3c535936fce1142593241a7b063196dc6eeba453641ed5b4d9efa1d"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

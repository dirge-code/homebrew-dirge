class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.20"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.20/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "0e2dc1f58ea24da4b4df73e7859f52cebcc5350fd27edc69e9307df672898cc7"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.20/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "b0095d7846a5eb04da1b391d9ea363325e4933d83be14085c02f011c3d207a86"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.20/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "152a1ead92485649881b810b21db2993966c55899082f1f18ca5ebe90a640b86"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

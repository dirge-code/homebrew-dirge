class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.6.5"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.5/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "782e7de2dfdb078bb08c43dcfc830bff31d2dbe2d39312d01f10fe9aff9a6ac4"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.5/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "90e8c25a155447bc3d457f03a1ffbebce7c8e8b71c3e6300733d4e3b31aabecb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.5/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80ca72de4a4946b2ea53776dd0557ad17443f8e09d36df627edf60e54ed4b806"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

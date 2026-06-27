class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.13.7"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.7/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "5784f4910b27900ffc8f12f43fd29b5cbc28fd6837fb472c4833f47e88901a77"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.7/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "960a4e607bfe91858b294fba4198645135f39384bdaa8b9bcfb72416693032b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.7/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9d14ab7fc1b8d080a4dcd7dea7da737eca354021c41ee2de285715b569c31eb"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

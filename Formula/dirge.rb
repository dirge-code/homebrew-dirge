class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.5"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.5/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "393409e6f1d106c84facdad52e1c3d734b510e9722c40b5766f2d26437f29268"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.5/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "989feb6d0f94c6a0da5c5089ffc963e1f21424738dcafc27019ff24e20d8c7a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.5/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ad54ead27846865580acd78d4eadb8963c89139234bb13c0a2314bcdedc1152"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.25.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "fe75c035d363d4c9efe311d6134306f0764e3e18fa062826f4cc930b91e807b8"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "bbd0c554111bb5271bf901232d98ae692351ac26e6de102020104694a0f31825"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8a0436751728888c764ce2df6973b916760486d50103f92580e81702848c528"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

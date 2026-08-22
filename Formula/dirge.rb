class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.24.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.24.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "4ca44a6f9ff451ab901ca58a2b2952de073ca1e6620af2377c27ff3016a81f14"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.24.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "79e91211cf460b5db1392e126142c755c57471132b4539fbd27e63f12936282f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.24.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd41671609ea90271ed3bfb8cd3cf0e120f5de59a65bd7e70a755f0aee3edb30"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

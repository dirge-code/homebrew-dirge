class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.13"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.13/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "fdcd93c2cb5161f9ec0bc58a1af8c8dd4c667504ea565113a58d3038f8527aae"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.13/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "8e98f4e2e2ef5cbd9be530cff638f4f3b0cf14a4fd1f4a07c733482a0afdc5af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.13/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "514ad9d538f7cbf5842cd8ff89b41eef57d129c635145ecb69a91efd0026bb9c"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

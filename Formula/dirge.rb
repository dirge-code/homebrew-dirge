class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.27"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.27/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "37a40994e5769d8e33174ecf6a11661e7c2ad3d5e431aaea21d8096e51e0be71"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.27/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "23b7610d5467099ea3ea0c55b1a93f8d7257c1a2c7455d352249ef4dc2b8d4bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.27/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "309ab47ab3e88438c103cb7caa8af480cf04b08774a4ce50c8d49b0e7c2922f5"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

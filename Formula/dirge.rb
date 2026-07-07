class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.11"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.11/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "2c6ef8dcd51dc911312c4edaa80815654ad76376b844781007cfbb5bd52c3dde"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.11/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "62798cc3cdeac0394797d801cb4de5fc14be19a53b5f2bd7587a63b7cbb6d3c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.11/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51588300759fa4be2e9488be33055e0929f8731bf32baadd8f96e6d7add01a83"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

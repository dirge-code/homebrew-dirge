class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "d25a9d0832512d4c5b8684393dec6eab15b1d7ef28ca80d75c34b404b8d66fe8"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "7c0ee8fe129499acf56d1800e347b2207ba5a4373661ff2d34b258965c13de8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e8a47d1ae047d508535faa42469448bffdfc4d6c10526c7229f1a5320dfc721"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

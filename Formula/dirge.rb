class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.11"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.11/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "660180f549411e97b848ddfb19ebd7f61da9a244aee08940c4afca988ae8453a"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.11/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "69166fce715cc96f2b36d603a502ac8aebc69ed8899abcb3d6fbee1a11eaed7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.11/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51825877c0343d6c2f22bfce461be25cb0993c0a48b2cce84f2b44d8e3d5912a"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

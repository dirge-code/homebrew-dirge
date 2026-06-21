class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.10.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.4/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "f5b6990b5770256b43edd7f6c4dcc7a1c1ca379f01eebcd84cb9ab88e90d242a"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.4/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "93f7b6c6fa8d553a55e1d18964b7c1995277212a592858262aa3ea2b9989195e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.4/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50a07f1babc1d04cdd17126de8454a197e561406b6e5dbd8f0f3b18d9a87dca0"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

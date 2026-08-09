class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.16"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.16/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "757127c8067212bb929615012ade836f98ed6b7089fbad5e76005110aa0fff90"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.16/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "2f23618f78996878242b99e6d17fcf6c26c0f1f8beca34dde131ebc652542ce8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.16/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6eb67fd6ddf0c7dfbfd1c0b5d1371156af5efb6cf821d53dc1d982c3a663d04f"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

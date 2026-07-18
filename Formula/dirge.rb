class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.14"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.14/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "302c048ef9412664bc5b6785e836aa1b9bfaf9deb20d2e22bb01649f696e6be5"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.14/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "17238344ca163ca2cd3a91ceeadb7f8721ac633b4c93e568d879985460593880"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.14/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2468541c5983e94f76b0f6144e49a890e44228a3a69207abc763d788c1760b09"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

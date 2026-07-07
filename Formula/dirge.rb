class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "f6186ac039dcd31131746a1e769680ae0a7ab4684312a386a2624a62f81f0ced"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "d1e94ab5bb76988f3fdeaf1e824d95df56a53e90ccf80e2ec14eb1715baad979"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82d4133d0d4cdd2143c32aa839b1779948bcb4a54e8bfcd17d3328667fed1342"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

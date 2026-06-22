class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.11.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "5ac1a55485f02a3fe0b2c54089285bbfe3c0b9eeadd5dc09bb45c0ea974d11ca"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "765bc5a6fbf51e875cdb2eda1ac35fc653400758f830f944d4314abbc82eb177"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40f3f8dc9dbefa16ebcdf09f27c08b64c1d7a89048eccf3979995d7c8c077feb"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

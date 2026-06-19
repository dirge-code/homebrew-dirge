class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.8.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.8.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "728e925777d41effc34afffe3acc80625e306b926c5e2560977233f0c0bd5058"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.8.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "68bd1e1c5d8ee4740e0ccbfdebdaf83a76aee918e2ec2be3794eba09c4a148ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.8.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b612c8384b6e7cde7c18f929e9062a02dd887f9c4d5bf512923729ecc9e8f9ac"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

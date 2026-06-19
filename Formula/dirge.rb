class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.7.9"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.9/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "588821768fb5164b9a7415c75091a184de76c72ccc624eccbf681fdeddda54e0"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.9/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "0167cc99798f77182925e77cb5287a165d881134d91f0aec396f27586c3549ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.9/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9897ed409e060e2109de00e6dd27ca9f11490f85297316af39e16be4fe2e405"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

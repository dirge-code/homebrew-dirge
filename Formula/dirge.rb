class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.20"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.20/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "11ec14b92dca4bed7e80fd5915a6c6ff60a6cdd80fd45f25f1c03a70a8c0d248"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.20/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "e1ffe5c7439cbe1ebda1373c930ca0ada46238836405ccd685f329ac608074d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.20/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf69be30cd1f1edf27ccb8360e54e30039c105af69cf6f914a385da88010a04d"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

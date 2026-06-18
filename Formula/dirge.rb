class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.7.8"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.8/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "7ded793c8f42639b60a63453c1f7f7fc1723e626522a0fb75a611cfda0e262c9"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.8/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "cf109c73f00a915520b2b24df5eb60904e68f49ba9f8a6b812352e8edcc5718e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.8/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "052545f656310536f3994a5a04c7e0bdb4412293dafeed0b4461b1de318cde0c"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

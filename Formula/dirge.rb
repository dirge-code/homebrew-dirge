class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.24"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.24/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "59431b05c9cfa87c9c798e293497ca3c694fb66a8e110e6ba526810da0b39b4c"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.24/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "bb9fb7cd055c5e80a75433b8c195e438c48c37fdf9029e0585e137aece4ce79f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.24/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1bad3d9ac327c74802ab1bc5b7e90d108801fcb05e16484549331d81d2df57b"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

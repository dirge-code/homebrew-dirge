class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "1c5a38cc55d3a507912d9c3f7ddf01344204c873ccfcb02a617334a09c2f153f"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "c578bd48ce802953b7096de19d6775646caec0782ec2b66acb85f6b2f24d46e5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e05d153b038c6620c8844c31cf1e51ab0224e05fdb0369134cbef5d754a9a5cc"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

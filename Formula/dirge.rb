class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.19"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.19/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "8ff02bf69f45c2b0bb23c44a7a4a914c5ecd62563da6d9921fc2d3e1295a8036"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.19/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "e15e5fb1cea3374e223d2009a0885328a97bc59bcd24b76c0603a4a5e6dd2c8d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.19/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d1635bc9e0e54697abff39f8e939d7603f2ab3ba38c7af2bc852754bb95d4ee"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

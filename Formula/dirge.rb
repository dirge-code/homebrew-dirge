class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.25.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "0b7b9b07f05380baef3e2de638aee28d81230d1fd98762ef732f0f38a30b5b41"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "c46074f27172c3fd3803dbf68c81a97ae7ee793394cbdbe17b6f1cc1f2cf2934"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37d64ce22e0a5997ffe35d60706f44b3f8cd9394a1d30706038d80dde352e75a"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

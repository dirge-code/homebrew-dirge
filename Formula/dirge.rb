class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.8"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.8/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "10376efdc3683af1166a49c4e75f28531f4511b0f65fa61bafbcfe8faca694ff"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.8/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "12353a5a65e2cf10a08015ec6e75339efd69369110be8ef2251889ab3df5a579"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.8/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7bbda9c071bb84d7fcd665e899ec0959bd036664ab350d9b34f6763c0cce349d"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

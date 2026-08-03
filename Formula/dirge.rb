class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.5"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.5/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "e933e2a6f51ff73abb5d20dbc3ab1a53a0626657b8f5a6474081541ba7a3efc1"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.5/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "3f82729f5e5407564ebc868ce4b54013a984a51e4db5bbf4f99695971e1c79a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.5/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07aff58dec17f6259c3c17c3542da879bcadaf3dc8e58d31d21741b876f66310"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

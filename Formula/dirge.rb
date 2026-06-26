class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.12.5"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.5/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "3f089403a59fe072fee0a9bd7fc6b78621b5d27553fa3662b14439ff43d6584f"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.5/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "40ad32c12f2c868357841e6ed2493a6a28611eab4d925392cb9fe30842e571e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.5/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6013fc255efd1ad2975b3b1c9bfd59a66a45926a43f36008d413a7460b3a5b99"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

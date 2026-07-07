class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.13"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.13/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "43daf67d5cf0f4f94f5dc58ff2ce655ffef8c5af1fd63c33c5961d7a558d440b"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.13/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "b3c0814b51b63f4a90f023c30cb3bdf2aff2f63d9ae49ebdc7ca8b4d38750645"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.13/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "210c6a41af03c8a372e7f31745183342668158a9b8607a4687cc163086762712"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

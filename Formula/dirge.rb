class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.13.6"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.6/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "98b76f7bb03c87041079634bceebaf75ad9db95e8f5ceb5a5e7568b7f0947ac4"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.6/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "cf24df7ce2dd31a889d772662710a5ddc42e4dc1625a6ae12f32593124da93be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.6/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3516ab902d481814988ade9a12ffd543dec716d1a992e7bccfdf159b636976ea"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

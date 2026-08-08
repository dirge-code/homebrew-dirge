class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.14"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.14/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "67c8f6dc68d7d8daa9d90583f475c45b64daf8e7a39326d14a9ee8914bd177f6"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.14/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "9867933f3f2271370474865856326c11ffb416d68b6d46bbc2b41faf5b128835"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.14/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c9d0b8cbaa47e15214f4ebd8992ab0aa40ea9f27cceb09ca368a339ee2f1894"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

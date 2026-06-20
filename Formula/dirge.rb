class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.10.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "ac5f1e534c486eabf4ccf798cf738c0ea6695864d37c009350b307cc433d8ae9"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "90397b18aa32c7ea86b8bc1a56a4c51aaccfec2c17adce9a1d7b710b73369c63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff0ac81a6bdc39cd4007c2683af4db6600f7b85839a05eaa5fc5b3398bc924ea"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

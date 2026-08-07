class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.9"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.9/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "4eb07a14087bd04ce39ba73f55fd73f6aa290f9fa5219975d1ee4d8b283d47a8"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.9/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "4d97a4cca67c607371bf18872766949d45bb68b16ee1b2951af38e869b80d48f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.9/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6cc23dc21bdfdde0a97afd04580f751997bc248f18ab84a1679566799f61475"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

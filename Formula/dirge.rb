class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.12"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.12/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "f1c263f124a6eae90738e2f1910031e4320b5870654fcb5db2b66359b106caa1"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.12/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "b59a656648378ace8b8630c33d18a4362c0b433f9d464eb8231ed2f53a6ba4f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.12/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "984f9e6f05c62528056152be885dc47cdb48c221bfded6a6191d9aa88fad2d4e"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

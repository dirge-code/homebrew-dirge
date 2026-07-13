class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.5"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.5/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "e3b92dceee8be314e23c53cc253658931ba1f6f6ed2c5da82d411eb62c61bf9c"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.5/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "f47bdf3723975629c7863df20dc1cef3e6d804cd644c4068bc504e49b3341fc1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.5/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99a66f05afa548c6937c121e7b0ae278a3a3074a0c9a4a5e5cc340e89264d5de"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.7.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "75a93e7aafe9f90ada1af00dd0c7bb7e2cd12dbf19b44d5f450b362ff34eac26"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "e626649b2e1a5b64932532e619df87106a9878bd103aca15409b6f9d6927594b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d13516fc7c0d1ab0892183a96de5f702e2a4fc5fa1f6d193fe935d36c0b5fca"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

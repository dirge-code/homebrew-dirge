class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.6.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.4/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "9203f6573acd0e4222bbd055e131a4774ab73e5d9dd99c48898cf1b0e2d0141a"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.4/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "28178f00467c1027ca88b40d8fdca55cf8b51ad74ab76ab3ba36c8b3c507c08e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.4/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21849b616b222e9371a3618d30e1ff2b2fd9694ee0b0631354a76a8a86cb74ea"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

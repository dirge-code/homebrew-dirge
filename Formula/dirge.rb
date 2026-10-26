class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.26.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.26.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "d988696b1be71ea9cde3a68b53c91b86b24ab1d397ceea05edfd96a466b4285e"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.26.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "bf6519c84b76b3047ab650f467fa797598fa8694ec8466c96cd2cf5219a192f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.26.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e09744633ea4af0e0c47530a8e1d5b2486748dac7fffa577d99dd5e9f4c41b4"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

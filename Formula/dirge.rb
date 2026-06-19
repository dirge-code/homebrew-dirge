class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.9.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.9.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "d9498c525f48845e9d8fce95c13fcbd578e5d8885c84da94647793e1078256d2"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.9.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "1b4458b37e53f914ae0752d737ec05f68e3f8f56f93518c553aa7ca074139474"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.9.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7991bfb920baf0947d861e84d7cfddaec03563941cabf008945d4964ebfc9204"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

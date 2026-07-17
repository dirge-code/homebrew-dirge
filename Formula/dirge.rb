class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.13"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.13/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "e12300a9a520635d14e44ef4f52388cd3770e2702d0759e7c6251cdcb1c30574"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.13/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "6245180749f078f2e311bd0d89d2b52437e06ba709c8cbc6255d81efcdef1875"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.13/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16c9b71b9c9491c71334a95eae94b9c6cb9be7f77f5a0d0320c734f8dd9fc635"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

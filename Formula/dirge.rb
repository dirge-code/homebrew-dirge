class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.3/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "4b83c3223c2fb92d7bdb87afc1b7adfcb89661ca8eb90d3d31839ecf967682d2"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.3/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "cfbb0628a803e4aa7a3fb85b8e0802743cedf649f43122b1fafdf6c4944721b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.3/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "927032b70493fb7e30abea05efd42a361e23e4596ebf23c43ef19235d53136b0"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

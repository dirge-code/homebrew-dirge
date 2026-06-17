class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.7.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.4/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "384e9b567d82077d6190110d551413645f3d1984b3c989267afdc9e55ed2d28d"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.4/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "7016d7da30f28f5b7fd229cade6fe34ba4493d89dd744b29f9b8a839a06782c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.4/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "711923f9b35cb9c93f3ac67c60bee378bf8194d13c77894f3168a7a8735ab99e"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

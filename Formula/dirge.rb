class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.23"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.23/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "2b28669218b26e047482f7067beb3cd34f01ed3bc36f918a64014a635eeda2f0"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.23/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "c4cb610e322984eb64d6030c3479e54d9e60d448cf99c8ea0550f23a875c3972"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.23/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3764c87ebb4b2bdd65586921e645587163203a1ec16d5b9cd12792ec93386801"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.10"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.10/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "a3dcdbbd0edb4433fcee395c778360a87532c099db1baf1abfcb9b3b10eeca83"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.10/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "0773164682893c53c934b2b105b621b9f94021a5bf411beb7dcec607e4608897"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.10/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b24b06af706cad4dfbea98f147376386dfb15a3c451c17c86ce1a5c997a987f"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

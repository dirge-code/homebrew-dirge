class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.13.9"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.9/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "2184c6d3a843bccb0f81447b6dc8617434279c451b936a9dfd82041d3fa4d722"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.9/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "9911443b94c701f043250c40cf315fecf1b0688ba52d0d8209ea70a5f0eb78a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.9/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e06b464714a2de771c7e86863934bae32b87c0c02287a1726707bbe13b09b3bb"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

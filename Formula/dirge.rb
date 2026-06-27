class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.13.5"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.5/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "66b82f1a72cce2ee3a64e804d1942267c44e28adb8a19fbe2a7e28157bf8358b"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.5/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "a25f1a1e20545614ac1ca84a6f7b42bec72547f0f60e2b21d4f1e81577563031"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.5/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57bfdaef46214f12eb7aa137e8f327be90e64d1706c276886e8b8b21c6eaf623"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.13.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "c6e2b94539bf856ee91baf8814405b4f61c63412f65d50d222ef62a0601d8a7a"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "ccf62bde9196d7598dedce00172ce57473746721801cfe8ec4f58c734b5fb8ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2a37c8b5cc4a33caf3bf21cc37261404ef7c70a3ca5c7dadb724239dd887e89"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

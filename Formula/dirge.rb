class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.17.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.17.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "f9251bb1048e6058b83efc7ca95a65810aa92b0639611252818d30d6baea6bc0"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.17.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "cd95dd296ce8fc1e27ea9f01e4edf5f3922d59873dc52e11016d17d1b06cfb28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.17.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88b359c3683b5e8ff0f1c4fb187fcb7127e7ad8de38ad3e7a153e30b0090ac71"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

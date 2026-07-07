class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.10"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.10/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "97b3c63af3ca420827081a669f40ac82f3324d0caad0536fc1bd6cc64181f20e"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.10/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "2bccb09d91ca3efe4a6c8e1aa81e3423a65dead8266453c3065f858fd01b54a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.10/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42625b18e0810514f492443afe4e470f5e703ac87aaf6b3b9feda5c0720be7ad"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

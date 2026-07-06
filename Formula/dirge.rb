class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.7"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.7/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "2ccba1b83b5f11953948ff0f7a7702d2137dfebb37bcebe6d52d73ef4f1d0999"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.7/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "dda6fb0640b71ebf65c15a0b67cfe33cf2ef33650ee8a4a2a06826e4ac9dcb37"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.7/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac77e8f2c8adc6c9ac801d53c12f4340649e8f5c22ce9514f8d429fb48fe6902"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

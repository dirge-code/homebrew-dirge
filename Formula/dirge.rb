class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "0486705584f1790fb520e189617eab2ac05e943fc4237e6eb2a7f8dc5db779ab"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "4111bf8fccffbbb0b791f7fe4a40974804bb8f8b5335e35c1cf1cc323f97c501"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb2ab4996e90d05ea9060cbd3209fb2d1fdc8460b473c7612dc913288b60c7b9"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.16.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.16.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "df1e4a7dd16ace204e36076e0f269e8e3d0d3f299f47e53856f2e1b85f327970"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.16.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "b3211ea105c7a6439a78edaf1b1daacb98e9d56586f6f542aa18d4fd666a63e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.16.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f66247731d31588e5f58625f2402e1c84d8cec37c2fcdc3994afad4fc160b2c3"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

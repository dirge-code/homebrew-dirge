class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.12.6"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.6/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "ee7b204f9a37357b7936c16a1cd6e535526a7de78673a4acfba2faabbeb4d76e"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.6/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "7c775caee56d4355d12a7fce495115d7bb1f3fc9e609e5211a2d323e9f9b71bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.6/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60b71fc8b10a48cef4af17d5adb66dcaa8e51ecb3c03e3b5ceeb5047f4b4deac"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

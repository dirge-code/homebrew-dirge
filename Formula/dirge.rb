class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.10.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "5a9c4deddc8cb716633e68caf9985fb9b02b905b59f5edb20125a6a4c983f184"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "f512fa22a206933eec617d8116afe6faeae2680421106d4c771acc2d545d55d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af4c9d2a3fb0b611236d25513ba77a3af8562a303ae9d3a305b4282e91d22ebd"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

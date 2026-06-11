class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.6.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "5fcc6077bbb325847fc29046018118a616d43d2fad4e1dcd9d52bea42a8643f4"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "cb994c97263423152926cf5405e7e615951348cfa4a11a6220b55f9fa76a84f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "13fdc4bb0b29a3ec8d503683d313456f8b4d6f73730305445c8717c2bbbfeadc"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

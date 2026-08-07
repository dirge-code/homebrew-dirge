class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.8"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.8/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "70e1d22766e5309aafa2e24e64fa5004a721387482b4252735c74b60a4e86a19"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.8/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "6e59f656d1741ac20bded360305aacecf6735c907777658d19e464bb4dc13754"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.8/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67ff14eaeb7766ce7519a522bdd8fa820d050d3f867f2896129e5483da65add6"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.7.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "654b9365280a7d3830091f7cf85077b4826b92aa62bc87ad818eb28d26d85349"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "c4bec0ab6cf9ad79cc9412179abcc9b0211fbeb076a80961e6b5901adf28ed28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6620a7239baa8e7d62e94d14110113a9303a6ee6c530df27ccf8335ea443a099"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

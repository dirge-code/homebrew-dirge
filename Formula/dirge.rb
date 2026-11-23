class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.27.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.27.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "be07e7a3d42e351063e9867d299af9ccb4a58437a7e59ab86478d0043d3d25d1"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.27.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "5c7fb71f70fdca2802066ec48e28f6acc2dc103efbe9ef3085f7e3b0f20fb56d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.27.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dfbf1db90a50db33569b975e47ffd9c945d7a5e8fe9560b01d3110e0e1f22f64"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

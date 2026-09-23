class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.25.6"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.6/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "6737c086bf6feb8d2154fd6ad365ffabf43a3600026dd5244fbdd58f1576cda6"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.6/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "1708bac502c7d1864295b1f64bf4dab662b753f5de47ced8bec6a18a988686f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.6/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a5e6ba2d83b3a55cd3d272e149b777ce4c9ddaad6ff2386a0b6cb206603bd42"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

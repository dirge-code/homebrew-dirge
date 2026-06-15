class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.7.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "44b7b02ebf4cc8b1d205b66e2c1d3178fefeeb928dbbaf429afe7b9bdf268eaa"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "74a5bbfda0ca258572b731875d130e480f56389d77ee8309703fbe2ffdce277d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b82e2ce1cfea380e9698b40040c0ea07d542b01bcd754d922c6f722a48d2cf6a"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

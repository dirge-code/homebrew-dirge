class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.25.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.4/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "70f979a6ff621442c5e308ec27f75381d802c4596cf480ed360e11bde1010245"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.4/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "5fad9db213b4792a1b492423b5ea260a2dfe83699a6479cf37f3f6825695e283"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.4/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dff976b7e92602f84f9e16f1fda4c8bba8e6298a26994cd21dc005979f4024c3"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

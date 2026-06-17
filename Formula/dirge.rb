class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.7.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.3/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "7944b65ebba2e56082b9eebd1555d86196af20663888815107cc5e1063a72039"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.3/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "6e038472cc85a61f7bf3c98bb82fdce8e24be5f2e266e3def8907f7327a3608a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.3/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f1fd2d9478c64fb3a29219b425a5db42f8e2087291b20f3fc084ee56f3c326b2"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

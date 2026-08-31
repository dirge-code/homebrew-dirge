class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.25.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.3/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "a10109c48f3818d49f940b5ff65a2c9121c51b853ce0a40bfd0835ca7cdfdc0e"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.3/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "369ca1c172b4782a4d0265ad85a5a50e19876a3e3930e45c775dc99f06dd3801"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.3/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "169f92b97a07f23da5f278841a547fca03c13279af8307d146e4ac2e1710de4e"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.4/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "d421b7838fdbe4ae747b193a499a4da6e46167c11cd48480a3748353ffa687c3"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.4/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "c1b684401be31e8145f80de58121f73e061c56a179c40982f00a719cf6e08bd4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.4/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a53bf24cc8f9b82beac3a58b05d2945d21c7a97686153db50045e27f85e3a73"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

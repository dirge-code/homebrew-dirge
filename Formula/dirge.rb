class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.3/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "06bad93dd906bb9ec1ce9ec7871ce520a6ea994948eb7aaef1d20f710bef1c7e"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.3/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "a9d2c54905a22dd2d6cbe1fbea8ee6275a176a7686eba671110488fadf56ad76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.3/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1de6c81a2e390d1986472f78d5c5407550ff468770deadf4271b1d8217ac719b"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

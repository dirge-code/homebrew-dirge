class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.4/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "ddcd40730b42602ea287047a611eead7be8904558f523409a6e3baa7bf932305"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.4/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "2113e522e7334569e3ef4b1378f597de4a29f1c87e2fe36a17dcb7139f9538fc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.4/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "39e8ff60038c3924f6cae25e254816021e77f5040b0034ed6cb691877f4d96fb"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end

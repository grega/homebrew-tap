class Vrs < Formula
  desc "Check the latest release versions of languages, frameworks, and tools"
  homepage "https://github.com/grega/versions/cli"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.3.1/vrs-v0.3.1-darwin-arm64.tar.gz"
      sha256 "2276b1409eed8560c0f4c0c334e6013b1f3476476a9172421b771a490ef481b5"
    else
      url "https://github.com/grega/versions/releases/download/v0.3.1/vrs-v0.3.1-darwin-amd64.tar.gz"
      sha256 "e518e46214b4920b62faf13fb69120c189f3a114f56690b8066895d682606d55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.3.1/vrs-v0.3.1-linux-arm64.tar.gz"
      sha256 "b3a7d3b69a2ff83aeba35fd5aa560d8a59f053b9e3f10315eb1c4b1beaea2eba"
    else
      url "https://github.com/grega/versions/releases/download/v0.3.1/vrs-v0.3.1-linux-amd64.tar.gz"
      sha256 "20a539b3e558dfa8062f2e4f0220a1044603d5d254cb56354658b691552e812d"
    end
  end

  def install
    bin.install "vrs"
  end

  test do
    assert_match "Fetching", shell_output("#{bin}/vrs 2>&1", 1)
  end
end

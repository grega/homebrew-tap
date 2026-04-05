class Vrs < Formula
  desc "Check the latest release versions of languages, frameworks, and tools"
  homepage "https://github.com/grega/versions/cli"
  license "MIT"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.3.2/vrs-v0.3.2-darwin-arm64.tar.gz"
      sha256 "14a9fde366f6aa79189f1a18a95c6dc75ab8e4593b3bf25379e7c394820ced51"
    else
      url "https://github.com/grega/versions/releases/download/v0.3.2/vrs-v0.3.2-darwin-amd64.tar.gz"
      sha256 "be1858301b9894865b54577996a82bd8848fb036f57fe654b000b5ffbd71ffdc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.3.2/vrs-v0.3.2-linux-arm64.tar.gz"
      sha256 "c687fdd0e54a690149e56a70f25e531866447520867ab3e071cf707420083b16"
    else
      url "https://github.com/grega/versions/releases/download/v0.3.2/vrs-v0.3.2-linux-amd64.tar.gz"
      sha256 "8b013ff8599965ad7fa0fbd0bc0e9f2a94255a2e4450fe3b882e3dda7237ee82"
    end
  end

  def install
    bin.install "vrs"
  end

  test do
    assert_match "Fetching", shell_output("#{bin}/vrs 2>&1", 1)
  end
end

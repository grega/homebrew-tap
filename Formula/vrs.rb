class Vrs < Formula
  desc "Check the latest release versions of languages, frameworks, and tools"
  homepage "https://github.com/grega/versions/cli"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.3.0/vrs-v0.3.0-darwin-arm64.tar.gz"
      sha256 "464d20b1e6126898d3e542b1407fa4c48ef2e4dee7f93903234605bb69e64594"
    else
      url "https://github.com/grega/versions/releases/download/v0.3.0/vrs-v0.3.0-darwin-amd64.tar.gz"
      sha256 "d647bf1be1c165fd046e03a18bfe7317a59ac63cf839a9134691ee9e2aaa8c2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.3.0/vrs-v0.3.0-linux-arm64.tar.gz"
      sha256 "c42992c989d862bbec566fe363e3e6d09e4bad7cb7eef0478c74b1a0f413c36f"
    else
      url "https://github.com/grega/versions/releases/download/v0.3.0/vrs-v0.3.0-linux-amd64.tar.gz"
      sha256 "c76a77bd623d9461a238c8b95733b66fcd53e2f6542979b32ce19454a7ca6845"
    end
  end

  def install
    bin.install "vrs"
  end

  test do
    assert_match "Fetching", shell_output("#{bin}/vrs 2>&1", 1)
  end
end

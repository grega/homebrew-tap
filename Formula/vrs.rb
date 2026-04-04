class Vrs < Formula
  desc "Check the latest release versions of languages, frameworks, and tools"
  homepage "https://github.com/grega/versions/cli"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.2.0/vrs-v0.2.0-darwin-arm64.tar.gz"
      sha256 "15212e745eff5f0b8e42c1c02f62c5c93e2c1c08f371f822e6393d75aa6374a9"
    else
      url "https://github.com/grega/versions/releases/download/v0.2.0/vrs-v0.2.0-darwin-amd64.tar.gz"
      sha256 "e0c5e0e53a9cad9aefbe809cac48ad9ee49780ed1065a19ebd3d6738f5b39b4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.2.0/vrs-v0.2.0-linux-arm64.tar.gz"
      sha256 "33fe42083eb175d8d2bbff9575fb7c82c58e5e0c9870c41663227a3fab73d31e"
    else
      url "https://github.com/grega/versions/releases/download/v0.2.0/vrs-v0.2.0-linux-amd64.tar.gz"
      sha256 "b7be11edad7555debe30a3238d7b1c97541dd5511a2d09ee0a33028c1d206af7"
    end
  end

  def install
    bin.install "vrs"
  end

  test do
    assert_match "Fetching", shell_output("#{bin}/vrs 2>&1", 1)
  end
end

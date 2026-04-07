class Vrs < Formula
  desc "Check the latest release versions of languages, frameworks, and tools"
  homepage "https://github.com/grega/versions/cli"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.5.0/vrs-v0.5.0-darwin-arm64.tar.gz"
      sha256 "305276cd0fbca9aed71ca00c0ba4a8fe2e6ac5de4d919cb54f6e49afbd1ed04a"
    else
      url "https://github.com/grega/versions/releases/download/v0.5.0/vrs-v0.5.0-darwin-amd64.tar.gz"
      sha256 "6861e0cb3447e6a48f0e05a136f92c6008acd5bb0ce5de3541afedcf5779ec2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.5.0/vrs-v0.5.0-linux-arm64.tar.gz"
      sha256 "41276e3e1d4efbc85390b371f4a12f8c0a18fbbeb1680b5b0f3c6dc6b188208e"
    else
      url "https://github.com/grega/versions/releases/download/v0.5.0/vrs-v0.5.0-linux-amd64.tar.gz"
      sha256 "d5117d2ceeaf517fb56df2a98de71241aeee472b99ec6bbfaf8e97ec05efa32f"
    end
  end

  def install
    bin.install "vrs"
  end

  test do
    assert_match "Fetching", shell_output("#{bin}/vrs 2>&1", 1)
  end
end

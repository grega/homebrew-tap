class Vrs < Formula
  desc "Check the latest release versions of languages, frameworks, and tools"
  homepage "https://github.com/grega/versions/cli"
  license "MIT"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.8.0/vrs-v0.8.0-darwin-arm64.tar.gz"
      sha256 "80684aa78600600c925ab99bb1f3aebd96a85ee1fb46336b61b52f1611e0c7e2"
    else
      url "https://github.com/grega/versions/releases/download/v0.8.0/vrs-v0.8.0-darwin-amd64.tar.gz"
      sha256 "86a026d033ceeea73370abe9be3de325188fcca211db792148989fbc0e02ea38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.8.0/vrs-v0.8.0-linux-arm64.tar.gz"
      sha256 "4cf1959d0fb3d4fecc64fcd760482ff36409ef4bc5ce3ce8999ab403fa8269c0"
    else
      url "https://github.com/grega/versions/releases/download/v0.8.0/vrs-v0.8.0-linux-amd64.tar.gz"
      sha256 "58a5f4db89e11d78fc77557fed59cb4758d199ca0acba35ed0858b6302c5552a"
    end
  end

  def install
    bin.install "vrs"
  end

  test do
    assert_match "Fetching", shell_output("#{bin}/vrs 2>&1", 1)
  end
end

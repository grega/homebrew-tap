class Vrs < Formula
  desc "Check the latest release versions of languages, frameworks, and tools"
  homepage "https://github.com/grega/versions/cli"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.6.0/vrs-v0.6.0-darwin-arm64.tar.gz"
      sha256 "8ed69a2e1cb2551a1bfc31a129250523d5e01a1ca55826247d05bdd336291ae0"
    else
      url "https://github.com/grega/versions/releases/download/v0.6.0/vrs-v0.6.0-darwin-amd64.tar.gz"
      sha256 "d459ea15b8726f7237b06f2ba2cd295f3a09e0405d8270f712313738e06f3ed2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.6.0/vrs-v0.6.0-linux-arm64.tar.gz"
      sha256 "c96c7f428fd6ecff1897d7cf2b6c2b1c084cee9d30c97fe8d2051b0f853b9488"
    else
      url "https://github.com/grega/versions/releases/download/v0.6.0/vrs-v0.6.0-linux-amd64.tar.gz"
      sha256 "78fa3a8587ea0d1ce6e496f4d9c39f2df2f9ad6c7b43f1c94a221eb5026e24ac"
    end
  end

  def install
    bin.install "vrs"
  end

  test do
    assert_match "Fetching", shell_output("#{bin}/vrs 2>&1", 1)
  end
end

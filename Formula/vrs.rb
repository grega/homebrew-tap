class Vrs < Formula
  desc "Check the latest release versions of languages, frameworks, and tools"
  homepage "https://github.com/grega/versions/cli"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.1.0/vrs-v0.1.0-darwin-arm64.tar.gz"
      sha256 "007bbda56e1a295035adf84c0e5ef6f0a24759d83f048777c731f4cc7cbe8f77"
    else
      url "https://github.com/grega/versions/releases/download/v0.1.0/vrs-v0.1.0-darwin-amd64.tar.gz"
      sha256 "de8701baad165925a7860853869af08d3437d01164115dd006b073bdb4b20e0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.1.0/vrs-v0.1.0-linux-arm64.tar.gz"
      sha256 "579697e6217c7e373b5831723ef1e199bac2630709b5db1e6e04bd584b0f72eb"
    else
      url "https://github.com/grega/versions/releases/download/v0.1.0/vrs-v0.1.0-linux-amd64.tar.gz"
      sha256 "f905e761fe2da347a62399ea47acc4d6a4f79383b3434d8687606d46fde03436"
    end
  end

  def install
    bin.install "vrs"
  end

  test do
    assert_match "Fetching", shell_output("#{bin}/vrs 2>&1", 1)
  end
end

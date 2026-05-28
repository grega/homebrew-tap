class Vrs < Formula
  desc "Check the latest release versions of languages, frameworks, and tools"
  homepage "https://github.com/grega/versions/cli"
  license "MIT"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.9.0/vrs-v0.9.0-darwin-arm64.tar.gz"
      sha256 "38190d540a31e36d43c0494c0139d210c8cabd25ad398cdb331f4fbd811f80ef"
    else
      url "https://github.com/grega/versions/releases/download/v0.9.0/vrs-v0.9.0-darwin-amd64.tar.gz"
      sha256 "08b426a01b9cbe8890a81e54659e4e86f7b342a03bbfbd795707f1e67b731e24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.9.0/vrs-v0.9.0-linux-arm64.tar.gz"
      sha256 "d0700ee881c51233a215a3123823d58cc0ee89e23b74d78a2adba4e89144fc4f"
    else
      url "https://github.com/grega/versions/releases/download/v0.9.0/vrs-v0.9.0-linux-amd64.tar.gz"
      sha256 "f62a7051d1f013b2ca0a9e8d69fcc8b87d55c79769c933fc09a36f0340cbe114"
    end
  end

  def install
    bin.install "vrs"
  end

  test do
    assert_match "Fetching", shell_output("#{bin}/vrs 2>&1", 1)
  end
end

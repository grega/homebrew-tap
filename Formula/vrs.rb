class Vrs < Formula
  desc "Check the latest release versions of languages, frameworks, and tools"
  homepage "https://github.com/grega/versions/cli"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.4.0/vrs-v0.4.0-darwin-arm64.tar.gz"
      sha256 "1ab15207e20a24a50baf3cb1066a6c3dfe20f238655a037abcbafc6834bdfdc1"
    else
      url "https://github.com/grega/versions/releases/download/v0.4.0/vrs-v0.4.0-darwin-amd64.tar.gz"
      sha256 "bdd60f9f34df78ea1b8d2bb89f64dc949e0ac94b0c9ff1c68a7a150f11f2a5e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.4.0/vrs-v0.4.0-linux-arm64.tar.gz"
      sha256 "2534b85f620b6cbfe4623ace7513d95f757aa8fd38f3070e9f9421aac5f76fd9"
    else
      url "https://github.com/grega/versions/releases/download/v0.4.0/vrs-v0.4.0-linux-amd64.tar.gz"
      sha256 "3375c8f5b270fccb80d7e382382314daa3437372df4fbf349308600793b0df90"
    end
  end

  def install
    bin.install "vrs"
  end

  test do
    assert_match "Fetching", shell_output("#{bin}/vrs 2>&1", 1)
  end
end

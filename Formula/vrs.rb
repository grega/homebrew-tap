class Vrs < Formula
  desc "Check the latest release versions of languages, frameworks, and tools"
  homepage "https://github.com/grega/versions/cli"
  license "MIT"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.7.0/vrs-v0.7.0-darwin-arm64.tar.gz"
      sha256 "659fc179521d97b487fa01ade2f96813b6edbd0809b4bef358c6fac699031143"
    else
      url "https://github.com/grega/versions/releases/download/v0.7.0/vrs-v0.7.0-darwin-amd64.tar.gz"
      sha256 "1ea37ddc4ea5b9506d906687de0884748d0f69f6f231a5cdc2800db5b6acb11c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grega/versions/releases/download/v0.7.0/vrs-v0.7.0-linux-arm64.tar.gz"
      sha256 "45be1fca30f87e50f1ada4140c18c651e19e81f9aac6115f62db13503d21e05d"
    else
      url "https://github.com/grega/versions/releases/download/v0.7.0/vrs-v0.7.0-linux-amd64.tar.gz"
      sha256 "230166f2081cf2f797e89fd3a5a8caaa144e57992f2eab27cfa492b65c37496c"
    end
  end

  def install
    bin.install "vrs"
  end

  test do
    assert_match "Fetching", shell_output("#{bin}/vrs 2>&1", 1)
  end
end

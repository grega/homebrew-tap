class Hdi < Formula
  desc "Extract install, run & test commands from a project's README"
  homepage "https://github.com/grega/hdi"
  url "https://github.com/grega/hdi/releases/download/v0.24.0/hdi-v0.24.0.tar.gz"
  sha256 "8e0e1020b60a79f50f9b4c0c6a9f03db212b35e28eb4a92f0e181014644ceb30"
  license "MIT"

  def install
    bin.install "hdi"
  end

  test do
    (testpath/"README.md").write <<~MARKDOWN
      # Test
      ## Installation
      ```bash
      echo hello
      ```
    MARKDOWN
    assert_match "echo hello", shell_output("#{bin}/hdi --ni #{testpath}")
  end
end

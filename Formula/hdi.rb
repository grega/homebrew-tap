class Hdi < Formula
  desc "Extract install & run commands from a project's README"
  homepage "https://github.com/grega/hdi"
  url "https://github.com/grega/hdi/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "6101a36cd368cd4847897c5b97db5e7aff0fbcd08d8fab3d0ec19c515114689d"
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

class Hdi < Formula
  desc "Extract install & run commands from a project's README"
  homepage "https://github.com/grega/hdi"
  url "https://github.com/grega/hdi/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "01c61d286efb069a61a536c2bb29105fdaeb590b0c902b507e19f07e7945ea95"
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

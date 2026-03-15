class Hdi < Formula
  desc "Extract install & run commands from a project's README"
  homepage "https://github.com/gregannandale/hdi"
  url "https://github.com/gregannandale/hdi/archive/refs/tags/v0.1.0.tar.gz"
  # sha256 "UPDATE_THIS_AFTER_FIRST_RELEASE"
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

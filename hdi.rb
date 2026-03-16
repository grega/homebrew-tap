class Hdi < Formula
  desc "Extract install & run commands from a project's README"
  homepage "https://github.com/grega/hdi"
  url "https://github.com/grega/hdi/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "f53096e8e6ab7b007fcfde375e2e9d24879cdb8c090b105fa6eec456f866c771"
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

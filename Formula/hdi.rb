class Hdi < Formula
  desc "Extract install, run & test commands from a project's README"
  homepage "https://github.com/grega/hdi"
  url "https://github.com/grega/hdi/releases/download/v0.19.0/hdi-v0.19.0.tar.gz"
  sha256 "78fd85a0ec4de37dee2ec07a468325687d2e0d21ae0d3de9c62f2a339858014b"
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

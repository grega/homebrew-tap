class Hdi < Formula
  desc "Extract install, run & test commands from a project's README"
  homepage "https://github.com/grega/hdi"
  url "https://github.com/grega/hdi/releases/download/v0.20.0/hdi-v0.20.0.tar.gz"
  sha256 "604fb9727e10783f651ce5c2410019e6ed0937249ec8b1cc8f6731abfa0f5cc0"
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

class Hdi < Formula
  desc "Extract install & run commands from a project's README"
  homepage "https://github.com/grega/hdi"
  url "https://github.com/grega/hdi/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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

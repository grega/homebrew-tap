class Hdi < Formula
  desc "Extract install, run & test commands from a project's README"
  homepage "https://github.com/grega/hdi"
  url "https://github.com/grega/hdi/releases/download/v1.0.0/hdi-v1.0.0.tar.gz"
  sha256 "2b0e5f4a9c45dd19344de4e071591869297028d56fdc57dde9347e8d55d597ac"
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

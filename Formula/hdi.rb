class Hdi < Formula
  desc "Extract install, run & test commands from a project's README"
  homepage "https://github.com/grega/hdi"
  url "https://github.com/grega/hdi/archive/refs/tags/v0.18.2.tar.gz"
  sha256 "48b2ff6aa1d527e997f059b58fcbf2611b3ac4c00c11ad238099ea175f68f575"
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

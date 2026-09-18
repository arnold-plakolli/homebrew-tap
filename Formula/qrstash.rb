class Qrstash < Formula
  desc "Stash and display QR codes from your terminal"
  homepage "https://github.com/arnold-plakolli/qrstash"
  url "https://github.com/arnold-plakolli/qrstash/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a4d63af85184fb118fcff481478c537d64670092a22077161cf7392181e253b3"
  license "MIT"

  depends_on "qrencode"

  def install
    bin.install "bin/qrstash"
    zsh_completion.install "completions/_qrstash"
  end

  test do
    assert_match "qrstash 1.0.0", shell_output("#{bin}/qrstash --version")
  end
end

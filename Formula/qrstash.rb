class Qrstash < Formula
  desc "Stash and display QR codes from your terminal"
  homepage "https://github.com/arnold-plakolli/qrstash"
  url "https://github.com/arnold-plakolli/qrstash/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "dc356ac8a6d541c8a69bd29ed661a79b5c08f4d8ba6625b01a9077a0f7f0bcac"
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

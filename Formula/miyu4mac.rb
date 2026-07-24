class Miyu4mac < Formula
  desc "Terminal AI assistant for macOS"
  homepage "https://github.com/Shiorangerin/Miyu-For-Mac"
  url "https://github.com/Shiorangerin/Miyu-For-Mac/releases/download/v0.2.1/miyu4mac-v0.2.1-arm64.tar.gz"
  sha256 "4d63fee4f4e91f179a721384dcfbc2f1ab0e7c4ee5e5e067a77bde256c56921d"
  license "MIT"
  version "0.2.1"

  def install
    bin.install "miyu4mac" => "miyu"
  end

  test do
    assert_match "Miyu", shell_output("#{bin}/miyu --version")
  end
end

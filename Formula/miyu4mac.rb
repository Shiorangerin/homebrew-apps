class Miyu4mac < Formula
  desc "Terminal AI assistant for macOS"
  homepage "https://github.com/Shiorangerin/Miyu-For-Mac"
  url "https://github.com/Shiorangerin/Miyu-For-Mac/releases/download/v0.2.0/miyu4mac-v0.2.0-arm64.tar.gz"
  sha256 "5236cd51991070c310ae3982b314534784d2b02f6ebbb7c866f1d0ef8fcd63f2"
  license "MIT"
  version "0.2.0"

  def install
    bin.install "miyu4mac" => "miyu"
  end

  test do
    assert_match "Miyu", shell_output("#{bin}/miyu --version")
  end
end

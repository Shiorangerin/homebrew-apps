class Miyu4mac < Formula
  desc "Terminal AI assistant for macOS"
  homepage "https://github.com/Shiorangerin/Miyu-For-Mac"
  url "https://github.com/Shiorangerin/Miyu-For-Mac/releases/download/v0.2.1/miyu4mac-v0.2.1-arm64.tar.gz"
  sha256 "84145df8bbe8eb5c17d52db79bb8b2c1f0f37dad60e5179dd796c319e7c0e826"
  license "MIT"
  version "0.2.1"

  def install
    bin.install "miyu4mac" => "miyu"
  end

  test do
    assert_match "Miyu", shell_output("#{bin}/miyu --version")
  end
end

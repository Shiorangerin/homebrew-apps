class Miyu4mac < Formula
  desc "Terminal AI assistant for macOS"
  homepage "https://github.com/Shiorangerin/Miyu-For-Mac"
  url "https://github.com/Shiorangerin/Miyu-For-Mac/releases/download/v0.2.1/miyu4mac-v0.2.1-arm64.tar.gz"
  sha256 "09f647ce67f7521c3ffebf406ceecf812eabcb75120a3509d713bf1fd77202de"
  license "MIT"
  version "0.2.1"

  def install
    bin.install "miyu4mac" => "miyu"
  end

  test do
    assert_match "Miyu", shell_output("#{bin}/miyu --version")
  end
end

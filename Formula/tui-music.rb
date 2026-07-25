class TuiMusic < Formula
  v = "0.1.12"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "a216fb7cdf151df83e328236fe4e62c47bbfcf0cf2e9db0226ab12e28725462b"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.12"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "bbbd4b0508d7a4807512d8825686b99d35c524bc5c2d2c89b637fdbea605146b"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
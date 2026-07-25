class TuiMusic < Formula
  v = "0.1.13"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "27b87f0bb9a9990dfcbca8d51f8f17d99dbd51d948ee182ce91eb1350daad225"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.13"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "23fc4198e18cdf7808ae8db347294b100bd38a98c867d0579a05960052560d64"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
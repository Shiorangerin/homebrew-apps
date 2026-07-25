class TuiMusic < Formula
  v = "0.1.3"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "9bddadf96fc95cd52ff7622d7f7f7af3d3ba55751707a8e9693c4a13737142dd"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "7ff935e6a0ff5603f7ff3484d0ae170e136e7b8741ed28fd84addab8ca9c0dc5"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
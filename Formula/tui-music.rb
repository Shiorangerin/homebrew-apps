class TuiMusic < Formula
  v = "0.1.4"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "39c0371e2a0b0e913b88996b12c40036ee216214741f6d9892868429e5bf1652"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "c47dcc088310e62b84d194f9ca194b2db67456f593339504ba35cb42f6eaf427"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
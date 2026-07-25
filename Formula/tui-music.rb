class TuiMusic < Formula
  v = "0.1.5"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "b4507acee39cd93ff303a1ef8f88b6777d74014dcb9a4208bfb537fccc03bc6c"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "b03474df27ce7eb225dfe736865bfe753d4fbd2d72a929e0d9fc2ed5b0add39c"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
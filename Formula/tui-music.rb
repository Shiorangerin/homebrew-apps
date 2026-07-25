class TuiMusic < Formula
  v = "0.1.6"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "ad321df5b2ec7b56d85a37a8ed73f0ccb34170e1fa4b5ccd12745dda8ada4943"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.6"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "594b56fdf635e173c8e9da37aa6fa9b22de60f485d99bd54b95863f009f7ba35"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
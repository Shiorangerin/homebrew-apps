class TuiMusic < Formula
  v = "0.1.8"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "1bffd9376109f3c0bfc2179a95d31553c8de5e7a0f7a37be0e9dd3802e31c33f"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.8"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "1d9786cc8e35b28b3846dc7e8d2108fb97e5f569f65edbf3089c62b4e12f5b81"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
class TuiMusic < Formula
  v = "0.1.0"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "62f11e9f160e36cb20b001b8aeb4d98971f89d6c0b29312349de695e51a38bf7"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "d88d086e8ccbcae0b0eade8bf1940428e7ab7e6d9b196da64fc129971177fec9"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --help")
  end
end
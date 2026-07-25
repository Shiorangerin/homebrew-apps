class TuiMusic < Formula
  v = "0.1.2"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "42dd9ccdaf45ba25218f4315d5f7f89d0c739422e6f5e11e5cb20499312eef3c"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "de23d10267147301d845f41b17a89ec372f5622b1ab24838d858a07c6e05133d"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
class TuiMusic < Formula
  v = "0.1.7"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "b6f20c17774cba82ebee4be9e8c572e18550775c7684e52f94cbda9780b34732"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.7"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "c01d4c4abbeee79572075566b6a79090845f149875314a339224830e2f960d80"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
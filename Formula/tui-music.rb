class TuiMusic < Formula
  v = "0.1.10"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "c0f4ac32ea6b63e88e71ca5c460f8d80265a1ed3e8e62ae678bf3a8db9e2685a"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.10"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "edf8156e2b1e8d976d89cb1c756bfdd6a66366d129063ac111c8f4c9748c42eb"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
class TuiMusic < Formula
  v = "0.1.9"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "a9be9a9c2ef946ded8194671b8e40bdd29c22c3df179071eccc7ff4822a02836"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.9"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "842c66f79ff8b5519240895b466ebd8459bbfc1f13e35d8918ddcd87a695d014"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
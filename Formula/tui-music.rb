class TuiMusic < Formula
  v = "0.1.11"
  tag = "v#{v}"

  desc "Terminal music player with live FFT spectrum visualization (Rust)"
  homepage "https://github.com/Shiorangerin/tui-music"
  url "https://github.com/Shiorangerin/tui-music/archive/refs/tags/#{tag}.tar.gz"
  sha256 "3e497c058638adc5863f0ee776d6a7be7418b533c08783b516e5e1b1687c778a"
  license "MIT"
  version v
  head "https://github.com/Shiorangerin/tui-music.git", branch: "main"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Shiorangerin/tui-music/releases/download/v0.1.11"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "1ae866c5d447c2cf3fd6837867c96b50e9b4221f497406a6bd175a1972859c79"
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tui-music --version")
  end
end
class BiliMusic < Formula
  desc "极简 Bilibili 音视频批量提取工具 (Rust) —— 从任意 txt 扫描所有 BV 链接批量下载"
  homepage "https://github.com/Shiorangerin/BiliMusic"
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/Shiorangerin/BiliMusic/releases/download/v0.2.0/bili-music-aarch64-apple-darwin.tar.gz"
      sha256 "bf13d813226413b2dd4b7dc959e37bd2873ebd49dd2395ff0ed1019ab2b7e85e"
    end
    on_intel do
      url "https://github.com/Shiorangerin/BiliMusic/releases/download/v0.2.0/bili-music-x86_64-apple-darwin.tar.gz"
      sha256 "314d5365986eee9d42abc34ddf17b080d4495748c042873576683eaa80c88075"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shiorangerin/BiliMusic/releases/download/v0.2.0/bili-music-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7808d97d08c9014a436495e0abaf2189105fa78411ac36d4a49e0674f0c7c8e1"
    end
    on_intel do
      url "https://github.com/Shiorangerin/BiliMusic/releases/download/v0.2.0/bili-music-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c76ee5d1dfca47903de5f6f5c543c75a30dd8d3f42731abe1f2ff5d662cb7967"
    end
  end

  def install
    bin.install "bmusic"
  end
end

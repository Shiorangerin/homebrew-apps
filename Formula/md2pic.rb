class Md2pic < Formula
  desc "Convert Markdown files to PNG images"
  homepage "https://github.com/Shiorangerin/md2pic"
  url "https://github.com/Shiorangerin/md2pic/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "20e44501a16e3ed36dc48bde6902f0098fc0f76ddd0503602eb9c1155438c7a8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "--omit=dev"
    libexec.install Dir["*"]
    (bin/"md2pic").write <<~EOS
      #!/bin/bash
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/md2pic.js" "$@"
    EOS
  end

  def post_install
    ohai "Note: md2pic requires Google Chrome or Chromium to render images."
    ohai "If not installed, run: brew install --cask google-chrome"
  end

  test do
    (testpath/"test.md").write "# Hello\n\nTest **markdown** file."
    system bin/"md2pic", testpath/"test.md"
    assert_predicate testpath/"test.png", :exist?
  end
end

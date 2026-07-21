class Md2pic < Formula
  desc "Convert Markdown files to PNG images"
  homepage "https://github.com/orangerin/md2pic"
  url "file:///Users/orangerin/Documents/Github/md2pic", tag: "v1.0.0"
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

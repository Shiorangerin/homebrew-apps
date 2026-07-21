class Md2pic < Formula
  desc "Convert Markdown files to PNG images"
  homepage "https://github.com/orangerin/md2pic"
  url "file:///tmp/md2pic-1.0.0.tar.gz"
  sha256 "53d087107f429ab444efc491f4c7b1f35700cde4e175cd7b328a7976076fbd03"
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

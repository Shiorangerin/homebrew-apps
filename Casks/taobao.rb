cask "taobao" do
  version "2.5.1"
  sha256 "1997acf793981263bdcdc3b272d01552428321243d019d532a72d1f83471e258"

  url "file:///Users/orangerin/Downloads/taobao-setup-darwin-arm64-2.5.1.dmg"
  name "淘宝桌面版"
  desc "淘宝桌面版客户端"
  homepage "https://www.taobao.com"

  app "淘宝桌面版.app"

  zap trash: [
    "~/Library/Application Support/taobao-desktop",
    "~/Library/Application Support/com.taobao.desktop",
    "~/Library/Preferences/com.taobao.desktop.plist",
    "~/Library/Caches/com.taobao.desktop",
    "~/Library/Caches/taobao-desktop",
    "~/Library/Saved Application State/com.taobao.desktop.savedState",
    "~/Library/Logs/com.taobao.desktop",
    "~/Library/HTTPStorages/com.taobao.desktop",
    "~/Library/WebKit/com.taobao.desktop",
  ]
end

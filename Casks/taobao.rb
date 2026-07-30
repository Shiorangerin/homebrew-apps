cask "taobao" do
  version "2.5.1"
  sha256 :no_check

  url "file:///Users/orangerin/Downloads/taobao-setup-darwin-arm64-2.5.1.dmg"
  name "淘宝桌面版"
  desc "淘宝桌面版客户端"
  homepage "https://www.taobao.com/"

  depends_on :macos

  app "淘宝桌面版.app"

  zap trash: [
    "~/Library/Application Support/com.taobao.desktop",
    "~/Library/Application Support/taobao-desktop",
    "~/Library/Caches/com.taobao.desktop",
    "~/Library/Caches/taobao-desktop",
    "~/Library/HTTPStorages/com.taobao.desktop",
    "~/Library/Logs/com.taobao.desktop",
    "~/Library/Preferences/com.taobao.desktop.plist",
    "~/Library/Saved Application State/com.taobao.desktop.savedState",
    "~/Library/WebKit/com.taobao.desktop",
  ]
end

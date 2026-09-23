cask "hammerdeck" do
  version "0.2.0"
  sha256 "20821c3c1093aeb9b64d6fc24debcc6a1bbb1e6563f94db822c8c43c0ba437ec"

  url "https://github.com/kouxing2000/hammerdeck/releases/download/v#{version}/Hammerdeck-#{version}.dmg"
  name "Hammerdeck"
  desc "Configurable window management, switchers and automation rules"
  homepage "https://hammerdeck.peach-studio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Hammerdeck.app"

  uninstall quit: "com.peach-studio.hammerdeck"

  zap trash: [
    "~/Library/Application Support/Hammerdeck",
    "~/Library/Caches/com.peach-studio.hammerdeck",
    "~/Library/Caches/Hammerdeck",
    "~/Library/HTTPStorages/com.peach-studio.hammerdeck",
    "~/Library/Preferences/com.peach-studio.hammerdeck.plist",
  ]
end

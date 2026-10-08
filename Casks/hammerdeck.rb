cask "hammerdeck" do
  version "0.3.0"
  sha256 "dd5ec0484c60cd8f2473a3b7257e2a133e7eb1bf0844a2b1aeccae81ddaf5e28"

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

cask "hammerdeck" do
  version "0.2.3"
  sha256 "820f73cb93f1dc1024dd065d5d14e232236634d44202efcff65f33768615480d"

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

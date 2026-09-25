cask "hammerdeck" do
  version "0.2.2"
  sha256 "0a60664c35eee761da90b5499aef17e8157a0f99b2c3237d892dbc7dd3d5744b"

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

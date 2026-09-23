cask "hammerdeck" do
  version "0.2.1"
  sha256 "128803280f33f388405557921d496b0e0f8f0814965c6edeb5f1073474d19ce7"

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

cask "polaris" do
  version "3.0.0"
  sha256 "4dd217484d30df2346156254fa94784f91f1ec9dbbcefe7e824f9b6e7b775f49"

  url "https://github.com/simonbusborg/polaris/releases/download/v#{version}/Polaris.dmg"
  name "Polaris"
  desc "Menu bar app for your Polestar"
  homepage "https://github.com/simonbusborg/polaris"

  # The app updates itself through Sparkle, so `brew upgrade` is a fallback
  # rather than the usual path.
  auto_updates true
  depends_on macos: ">= :ventura"

  app "Polaris.app"

  zap trash: [
    "~/Library/Preferences/com.weareheavy.polaris.plist",
    "~/Library/Caches/com.weareheavy.polaris",
    "~/Library/HTTPStorages/com.weareheavy.polaris",
  ]
end

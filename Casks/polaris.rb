cask "polaris" do
  version "2.9.1"
  sha256 "067d6cb480eecd6a3778a83fd17e4a3d16f99c0aff61f540258a1a158676d775"

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

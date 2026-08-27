cask "polaris" do
  version "2.7.2"
  sha256 "87eb600b58c4ec5a3b41451a845de8d8ba81386fc59a6f28676c5b318c122ff8"

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

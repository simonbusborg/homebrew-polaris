cask "polaris" do
  version "2.7.0"
  sha256 "bf536b6c568814e8c3410d469a56f508b2bbd14b6fdd7461681f9c47d083c2ec"

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

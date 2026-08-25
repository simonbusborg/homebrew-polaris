cask "polaris" do
  version "2.7.1"
  sha256 "53828a3b79ee4c02c1ac9578208b54541e2415c02a900a9dbbc6096472d6970c"

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

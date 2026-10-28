cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1916"
  sha256 arm:   "76754fea569db4fff687b8e6f21e8a69e587fdfc02e9f025731e9657525d729b",
         intel: "4d6b35b52da0f9f13db32d3913c188f639c8316282bdc26c9a6d652a948873a4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

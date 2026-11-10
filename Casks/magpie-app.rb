cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3651"
  sha256 arm:   "0c23b74f2c7fa8dabb8af288d682e7726b9512eb06831cd3dbee2537c9dd90b6",
         intel: "a3acc8a15ec23f82e0c3bd51f72989f6494e09314db1ab3b97b272a0c9ad3506"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

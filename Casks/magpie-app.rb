cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3210"
  sha256 arm:   "429e01c264993aabe478df23c16e36ffedf2ac00e44384d35679ee6c6cdf349d",
         intel: "0f73ad009ebdd32207032e1fefed4995bdb1f3f12e0bddfa40a87ad7741d13c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

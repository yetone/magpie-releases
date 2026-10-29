cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2089"
  sha256 arm:   "06b01c6ccc8feb4419a95d7503c229eb660792240ce0f79482f558a1fd4c6956",
         intel: "664f638a131865c2734090c0dcdc6f2d059d44e0cccd35bee06a17435c8ac894"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

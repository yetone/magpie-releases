cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2838"
  sha256 arm:   "5c86b689a25fe532b7a75dbe809c0161e7e6d1025fed768b0513172e60c04fea",
         intel: "8b3f227f43b4ba2c3c1ebf10b97eab376b7b7e6beefaa60996b4235fe38d11d8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

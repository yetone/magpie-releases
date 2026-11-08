cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3349"
  sha256 arm:   "443d9e4d94842d7a4bac1c08f2ed8af8373b661fcd107f3d630359da2c544d8f",
         intel: "a90d1c7de3828598e9115c59c4b791c4aa9f4f76721f4ed24c9b5bb25d088526"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

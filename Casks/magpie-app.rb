cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2149"
  sha256 arm:   "fe3166e40543896681b4dc746f2c96573a35ef8a428882f7f3fd7cc814497e13",
         intel: "3ea309cfe3e579bd264c1e831f0ea8e88e5a9aa8499083fb01f5d6349fddcd06"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

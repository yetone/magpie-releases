cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4924"
  sha256 arm:   "21d53b3d633b409e6ab5551dc64df2f72773d5fa94639abcfa5911190bb52301",
         intel: "4c077c5417928a230a439754e5478b5f1183fa29fb327d3dfcd7be529804097e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2727"
  sha256 arm:   "eee4c0e7b09ba30a06d5ea6942a37461149ac8e4c06f8e0b6525b0347988653a",
         intel: "e649bd18c38524c7e67f35e8d25b0c1de110af5495e538035d3470aeb791fcda"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

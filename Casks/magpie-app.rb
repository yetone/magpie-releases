cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4017"
  sha256 arm:   "73b49d323e44bbc8f3c889882141417153c8c50cde67a4d75f6bb850b8642d6e",
         intel: "9a690e1abd51b5bdb9b77457d76f34eecdab7b442c27745352e8a8284e4b680c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

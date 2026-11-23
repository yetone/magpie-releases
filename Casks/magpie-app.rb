cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4729"
  sha256 arm:   "cbd0ce6221cd1d4a83ba257331773d3b70264df11de4c2e624899deddb64381a",
         intel: "b074d7c077e558a4647bd6c007896ffa75a1425200a9696f5788889465237b9b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3790"
  sha256 arm:   "c9a131cd992f66fc828370fa0187015a5ec8112d3bf68109c930ab91b4504cdc",
         intel: "4e6b0de51638bd7ae44d2945c9de534c60926bf648602e1e7234cc6ac77b6499"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

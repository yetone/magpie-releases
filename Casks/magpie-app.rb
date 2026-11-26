cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4846"
  sha256 arm:   "113220425891c39fdaef1d8f9e8d18ee13910b31765477519f33663d92537c01",
         intel: "b20f7e8521cafa294ce4deec0fa37d51797c037cfe2ba62bb1b6cd0a3dad9dbc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4504"
  sha256 arm:   "5c6b8c7b7425d7d454dc298bacd5079ffb4e467f2305b6db2a05156e86ab39e4",
         intel: "672f9d7cc1aa0735e687bddca87d7f5789633297c7dfa18da3d039d5a1a32001"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

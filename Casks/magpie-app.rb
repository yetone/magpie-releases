cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3979"
  sha256 arm:   "57ceb08089754b757b83f4c7058cbce9c29390597d8b892c970f5ab1d7a02604",
         intel: "b43f20ead793d39b1a756651b8f47b430f5d6d01857a15911c7c16f493802d03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

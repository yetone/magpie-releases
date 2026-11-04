cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2898"
  sha256 arm:   "b96b1b765f580105b5d64d9140d684767218de7bfa0644970e537318e756d0b2",
         intel: "d9cf867f930f5acee9de9bbfc5cafb747fe3179f9e20adebd6ce850531490651"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3847"
  sha256 arm:   "73bea759ce207686629c452d0007fc46bc4fecc7d06a2777ecee005be2acdf8f",
         intel: "422b682ec45fed20aeb5d430ea510ee527c3820aed385da642fbcfa8b341fca4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

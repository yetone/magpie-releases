cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.895"
  sha256 arm:   "b010e58e548c08991a5ef2d7651e08f3b5ecdc32470c5f6ca0f436de61ab535d",
         intel: "93cca50479f157c12ebfafee71fd8443f437b452e6ba902116577b3122024fb0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

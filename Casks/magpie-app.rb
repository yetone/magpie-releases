cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4979"
  sha256 arm:   "736b4ba52395fb50d159684c2e0ebab97182ccf6ce7008b06eb03497ec24db84",
         intel: "57e1c08e2d6dd55975147064d363ebaa7d6aac3fb34d2ab5e7ca84570d19da98"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

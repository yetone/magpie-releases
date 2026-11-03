cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2773"
  sha256 arm:   "17001044459e08700fba5af52ffb8d5bcea44dc9d378014486c961df2ffaddc4",
         intel: "477e52c439ef55de80a881591ee71256fb4e7778634589d58d00aace0775ba5a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

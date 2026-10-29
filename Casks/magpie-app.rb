cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1988"
  sha256 arm:   "b7527b90494ade4d2e0f95fc0a927d3e1ecf905dda5ddbd58f42edf9f93e639d",
         intel: "782360145a579fee93444257b5b2230c3bab8997459ccb805b1ea503120f360b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

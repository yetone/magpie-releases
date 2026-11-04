cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2907"
  sha256 arm:   "b74b5a457269689d3e1363bea5ccb0668bceaf542aba61d638dd63dc4d3dbb7b",
         intel: "b31331d6a774396ee8b03a6db2c3ecfb6a0afdd73487ed45dd225d815811babc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

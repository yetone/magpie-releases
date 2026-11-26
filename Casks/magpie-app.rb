cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4873"
  sha256 arm:   "64b71d21ccfd6029c81006a9541c7576f0ba65b17401c43616f30ebe0f2ac16b",
         intel: "b2699be3e6609b42c1d605673a19861de969aebc49fb7fa225059c752bc7a4db"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

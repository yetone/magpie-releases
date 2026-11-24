cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4759"
  sha256 arm:   "d0323e2735ab090a73fa7b2b1b6a5b830b840cb97ddbeb448dc34f978ab081dc",
         intel: "ca53ab41f55fcab2e966260af0c92b38802a338cbe418c1339d81afcee689c30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

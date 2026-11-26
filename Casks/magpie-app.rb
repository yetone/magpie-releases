cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4853"
  sha256 arm:   "817c012395dc9927c35f556e27842ecf4e86617f9f78d2f77bcb040e75a4fcb3",
         intel: "c89e6a7632bb823b3e7ada004a5b4ec1b158436ec89d7c4dd4e00b4718321665"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

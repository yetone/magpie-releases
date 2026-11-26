cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4831"
  sha256 arm:   "554b6bbc9d31df6cd60d5d1b9b0e3a32e564a9a31296e56dda05d81adbc22f38",
         intel: "619f65957590ea5b40ec69283b76340bea79ffd9daee645a8718ed1f9d88d864"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

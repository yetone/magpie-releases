cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2291"
  sha256 arm:   "70449b21975852ba68532979a23554cd4417a8a7d3ff5f50178d92d4eec45521",
         intel: "0ff45d276e3c5597eba493642223361b969edd95ba1d5eb914d1dd3cf9006d26"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

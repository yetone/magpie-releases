cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4011"
  sha256 arm:   "ca934a140fd7e82077e18d3c0fcf928e54ddc2b0899275e6d510131ead1b6667",
         intel: "74fa15a8794fefa0f8077be1d3b2fa5b81d53a1ef8664dd6ae79e02c13f8b6a2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

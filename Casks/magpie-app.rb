cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3158"
  sha256 arm:   "baae8455326cb7dd140e87d38703db64d67a544e73008dcfa5f935e32e3f0cca",
         intel: "3515ca73a4cf2440949a968a5ec9d3435060d91051da2e580165de12e3bc8016"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

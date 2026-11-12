cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3925"
  sha256 arm:   "dff7ab5d08480e5fc4e1c52d5a4a29344466e99d6107333b98a51f6f005f326b",
         intel: "3fd928096d2a4e95406db29a803236d91860182c138c9aaa5fd95de5356f396c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

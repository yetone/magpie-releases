cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3240"
  sha256 arm:   "45f1eaecbb58b45d5bec6a365b1e718f38be9b318fa3f9ae66378d8d01eb5915",
         intel: "d3e3907fefb592ffd8023632638bc2d44b40e35eed854b5d9796be2d9d772663"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

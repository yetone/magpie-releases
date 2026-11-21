cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4651"
  sha256 arm:   "5386d783fe8477d6e2f2b9cf90e7dd9a065a9cb60cffeacbdcee77bac8f9ec46",
         intel: "244d138043b978d78ac4ca71e524e1742b2b40a122bec9c3bf1c927ffed639f4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

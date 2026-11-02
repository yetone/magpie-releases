cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2697"
  sha256 arm:   "50f62c79512b628a0d445f2422761bf264cbc37943f39612001adbbae9eb3049",
         intel: "dafe5b417fd18e2667122104b7d3f3ce866e928e6da3e6be325d7e6b75bc5a9e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

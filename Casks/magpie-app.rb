cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2699"
  sha256 arm:   "2e17104d57734c81cf89157c85d87ecead7f3b74919c41de2649de125264ce44",
         intel: "0a7db656ad6a2759224193e5d5275dd4bc173498a39fc0ea22ede93f93635295"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

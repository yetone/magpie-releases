cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2484"
  sha256 arm:   "23f2646ca85f891b60ea00ce9087b6eea3e42af28b5b89bc7b6ef6d130217a4a",
         intel: "0c4ecbf4bdfa9e6f07d8eae189d2927d9777ff4e6fa210152d0d03e11cf3665a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

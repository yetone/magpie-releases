cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2359"
  sha256 arm:   "289e6c6ac0214edea34f7bd720c9b7cd7f364d37d07b9f11a85e243afded6e20",
         intel: "6b22ef4555fd0dbd6fc89f771d79b5e59664b731bdda7ab9ea86eb8a9d1aefa4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4308"
  sha256 arm:   "22322291e45139df228db60d5c07fbc6ca818fd358424a8580315fdaa5f6abbf",
         intel: "a729763bbd820c614b55324a0a61b81171bc66fa78edccc7dfcef81fb5eae458"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

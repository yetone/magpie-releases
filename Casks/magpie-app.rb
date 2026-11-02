cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2718"
  sha256 arm:   "dab4eae8777d3d0d9585992c1b76811283f52c62803a5bbfa9eb6d71fbd19424",
         intel: "8eff2a758cf506bf0a99ead91160d692b217269a806cd576825ab5c76f581e83"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

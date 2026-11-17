cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4390"
  sha256 arm:   "4e4c74b4c93e8784bdb696c5a651329289a3820b1ee6caba1168e54ac718c21e",
         intel: "c46757e78983a85d24a40b4ee59d2d69bbaeecd7f8e1842318446d27fa8f933d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3387"
  sha256 arm:   "a8dc18c188b2df41478fb6044f3efb996b53f35bdbe7192f872f8aa041790b5c",
         intel: "2730f66137a7324b454177c15ab939d06b6f387d7a9eb35c4b00635eaec85fc0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

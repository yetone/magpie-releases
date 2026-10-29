cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2106"
  sha256 arm:   "58ae6e69397155ae8d9a0b67777fbc8930d261fd9e824c9d7fdd79a5c37bd6e7",
         intel: "44c53945b62bb511a8760502a352b99143687467287183d6552eafc03da10e08"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

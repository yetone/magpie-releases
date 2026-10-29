cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2033"
  sha256 arm:   "849178d518c5714c6ab27e36923f25bfbcdb084208746188d80e03f4aaceb6bd",
         intel: "84064c79a8ad6046bb14f58a61e258cf6f540f0d34888202802d26b5c6f0f65f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

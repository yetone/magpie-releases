cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3309"
  sha256 arm:   "8334c37b58525c845c85dbf05f10b4996b62634606149e29f6aa65480d395560",
         intel: "614217cdc46221f357505b37fe1e1396002c34104813ec5f39dc3a01c8923752"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

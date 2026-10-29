cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2067"
  sha256 arm:   "cfeaad8ae398beda80fe46323ceb63d49a2b6fb359e0ad44daef187008b2bf42",
         intel: "997fbfec8fa1db172b49da344ef11106c8d55f109842d7ee8ceb32a3a85ce7d1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

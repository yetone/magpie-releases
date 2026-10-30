cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2256"
  sha256 arm:   "ec9fe656faa5c033e2028a9550367787cc78ab71192bdfb75701e9fe53fe0ca5",
         intel: "a8dccb8d31b41ef0f3593a80be84c9240324d047ad3913ca9337ee65c797a4f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3105"
  sha256 arm:   "90df7e5b257e4a0857c396e84e269fe068cbe833d291c64d86bb862cf50677b3",
         intel: "c6bde262d676f8c8b22c887e18f75099ebe12ae10b80a57a1db8128afae76ac9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

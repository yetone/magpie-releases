cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3552"
  sha256 arm:   "1a476ffbba001bf1b8cf40562045cc0700b928125237c9d881d9b82c22f743cd",
         intel: "8d54050817024cda41bd1f6fc13ec8afa808d663111f54fd4db4ed6ec355af88"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

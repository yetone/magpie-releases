cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4239"
  sha256 arm:   "dc93cfeced450ec26afc3e529ca636dfc33f04a701db1e237e681da496de09d0",
         intel: "6da79661c53876d355d413a931e540405738542b093d40e8323b8c8498072de6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

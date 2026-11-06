cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3137"
  sha256 arm:   "1b043d34148a4d39158955f45ca86d167511c1fd112bc3cdd1f7f97b6e30c136",
         intel: "454752519341d687d5319996df85444807d20973ed6a1d83fcb3f6d7d8955429"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

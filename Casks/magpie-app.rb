cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3543"
  sha256 arm:   "40a51ef58792953d78a005f5ce970341b7e841cdd5e87fce32610d956ee42edc",
         intel: "e310c9fb835cb59a63edbbde5703421c6e02f9fb0af96a03db20e8df490cec32"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

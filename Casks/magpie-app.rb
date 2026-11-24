cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4754"
  sha256 arm:   "c5dfa7a16f253585cddc23e50b58a5228bf10327f1e646af205c223fe06fe9e0",
         intel: "a260f6468e1b262454afa656dc02d336dbb6297d3d84cc2e6761bd523f2f1523"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

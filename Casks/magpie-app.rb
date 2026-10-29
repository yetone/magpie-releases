cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2024"
  sha256 arm:   "4e8bdd8d5b15a7a531213c4e0af4d1fd101dfcc36513fe8553618918eb797014",
         intel: "83a552fa37213372763ded09b750924d254cdab73362ff4ec41c92cd3ed70d33"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

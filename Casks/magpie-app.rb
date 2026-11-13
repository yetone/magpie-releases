cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3996"
  sha256 arm:   "81c74c8e1c7ce8750cb1104b038f226c7545057e5bdd572a8dac48710ff63a8f",
         intel: "e9f0ce715efafd12d520de3ef1d1267d3f9e77690b1aa82351ff4d21677c02a1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

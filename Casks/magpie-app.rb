cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2114"
  sha256 arm:   "69bbda7c50cef166a8e389324cdc348ffd3186492164cf13cc2d54fa20dafb2f",
         intel: "5d3acb5b61480987e6e6f4da0398774f41c929a7c31e24861d00f597e02c0713"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

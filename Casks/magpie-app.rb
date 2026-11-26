cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4844"
  sha256 arm:   "f76385a3fb81c442dcc496cf83282e2da167264641cebaf17d4a59e21243df4a",
         intel: "90975759532a58a37800f585dbea5f0e76191497224b6966946059db20c0a55d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

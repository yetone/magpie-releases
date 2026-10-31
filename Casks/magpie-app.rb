cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2454"
  sha256 arm:   "b915def09b1fd5172e9880e432d1fed18a237b939043a32ea9acc2fc3a388872",
         intel: "48bb9f621ca77ada86da195272d2b4bd194f7988ae40424b8fe7137f5e226368"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

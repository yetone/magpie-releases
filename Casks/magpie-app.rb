cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4680"
  sha256 arm:   "15e9ca2f458877bfed0b7b93868878ed35f098a41ec36d904d8ecdba97a08a29",
         intel: "96b0c77a310410ffc3ad974abe3d7e57a168fa9f141d4d98d619220ed996ead7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

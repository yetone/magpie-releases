cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3687"
  sha256 arm:   "d90cb3682e64b8012d30376140cc93307dc209379b6ca37ec6ee600df16222f5",
         intel: "37a4a044014bee8cd038b69dcb8c27ad4bd480d13793670ed1cef17d68c5ad59"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4252"
  sha256 arm:   "df86bc33b3bcac4f09f7a434a29eebe8a574905526f088cb05b14496344bbbaf",
         intel: "c77f7a8b7127a6a281c2616a76dc6603c662b9e806b12bc77eb5406293fc60d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4058"
  sha256 arm:   "75ebcc81b20f905a3d7645c1e80f3a5492ceb8b008e4f7623fc40f421429198f",
         intel: "e4c51132e5a60322a629f3ed4cab47656c7e501a6c5e5875b01779f8d69e3b91"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

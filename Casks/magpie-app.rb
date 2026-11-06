cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3206"
  sha256 arm:   "9eee0b8ee90c30f3feef7b686ad6f1880155e9dfee97f7f2c2d5477f4477205a",
         intel: "dbafd812d595424e1196798bd718b20c77a5e924cda81314cb9817abe6f9998d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

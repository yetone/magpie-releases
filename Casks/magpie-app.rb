cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4812"
  sha256 arm:   "7d0975f05a328bbafee40ab7dbaefbd8496ec723822e86d2c6345f37ee9a67c6",
         intel: "87e4e5c9aab0c13dc31add08100d809a8ef1225deedcba6514ed9549d9227638"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

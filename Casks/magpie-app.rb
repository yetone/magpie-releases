cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4627"
  sha256 arm:   "3bc1e9bee2252215728e9799ea60b00ce579eaece21d7735ce737fc2d1556c33",
         intel: "74bcb8980712cc7aa946e9f96d64d05056bb633d4139d35c567d6b0074b8da12"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

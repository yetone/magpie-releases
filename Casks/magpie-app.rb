cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4537"
  sha256 arm:   "16d32b199a0efbac806d5c6df5c41c7a9e6b9da38bd9a72c9ed5306d45087784",
         intel: "5ffbe78781dfe51b824aa1d7be42763c52d0f5b67815804b2589281ddca1a746"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

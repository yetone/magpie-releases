cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2180"
  sha256 arm:   "0d0cac8098558f6dd666eb41bc47903cdca2abc924f20251fa1bc2c70cd68c6c",
         intel: "900064a09fc8be2d5da42279ebd9aa151f2a8ca3a75323b2a7564e1543e02410"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

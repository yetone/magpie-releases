cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2796"
  sha256 arm:   "98b4bcece3baac3b82ad60beae0794d84c175553e86200416df53cb2bc46a777",
         intel: "78727d3188ec519ab50d71eaeeec1f7e64747d172ae181539d4bd2b66cf52abd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

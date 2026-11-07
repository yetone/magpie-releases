cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3253"
  sha256 arm:   "9439058022f17a78bced4dfbd551ee5f6a0f87d82871062b504ebb522cd6640f",
         intel: "357103b35161cedfb04a84fc25ac37ed3b80ab095d5fd2b66ad2a61da000f464"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

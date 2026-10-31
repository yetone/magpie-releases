cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2472"
  sha256 arm:   "7c053e0b11b1811068e8ea845b0679496f4870bdd0988a5e74b28dd8ffe9f792",
         intel: "2877f858aa7905e99e8d4d1c71d60d05d467caf6c35804d88d21791f11d4196e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

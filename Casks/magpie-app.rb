cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3258"
  sha256 arm:   "d7d10affe26312e877f7e878da6a49a38588c1ffb4a17ab4f35c65707b99b7d0",
         intel: "9d7f04ee0d3de944e3bcf3293829d7f536d7849f2e76a7ab6e4bda8f02e02bd7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4301"
  sha256 arm:   "3f8c5d21bc8dd5f697f7d9871ca43f2e054a3ec256f9ad2d225716d5ae017063",
         intel: "9b7794f654854957fb6aab8d8e083a64474b79f137f4c1b25ec440510c7b37d1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

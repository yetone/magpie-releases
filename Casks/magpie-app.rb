cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2911"
  sha256 arm:   "f367a75784a34cfc02d60b74637fe823beac4eeed2124dda4eeb7b17982a44fb",
         intel: "5b5ed62cdc12d1b423bfa2bbdf2c2b7d777bf086626d1f313221291447ced597"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

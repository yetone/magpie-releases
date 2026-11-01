cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2612"
  sha256 arm:   "c8da457330f3275ed1a3f68a1e6422e5d15df307e1a688f62345671f3ce2d811",
         intel: "a57e9d4730cda553712640a3bb0a7df3fbdb4d4e030e521c20267c6be0d8a041"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

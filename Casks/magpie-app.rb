cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5039"
  sha256 arm:   "c35d3360ff8943f318694075f4bddd5869b5f4ddefc9f45227e6482a6f412115",
         intel: "c5a6be4d17f07ab22e3e3f5fabd1486cc26d8cf525108c8d5d7eb453b58eee5c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

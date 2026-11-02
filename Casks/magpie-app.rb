cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2716"
  sha256 arm:   "c01570314ada845490e17f0b1616a0006e2afd0d713d9d35cdc0a81841304caf",
         intel: "1bac08e9b4923a770131f356d5e436a58a52d34ac31baabd8ddc84d758fb4c7b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

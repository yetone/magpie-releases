cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4716"
  sha256 arm:   "d5b9814335bc5e80e8e324ed5a578e1770382cdc46b92303a59d138c00d1c082",
         intel: "512ad6be2b5535c004422960714eae4fa90a57371efe467adbd5b6cedf1e9448"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

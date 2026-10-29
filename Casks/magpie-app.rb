cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2049"
  sha256 arm:   "f3ee8dd2d22458e782f709c26ad83cf9bc1158d571d40e37d8d6884d13b68fbe",
         intel: "146148747749011ac813e100b440b1701faa22da24c04283466cb75d63729ced"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

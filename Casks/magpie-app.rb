cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4559"
  sha256 arm:   "88fa45776541b82ec02765683e59936956d27856739c7667ff2c71115b4decab",
         intel: "c7e0ffce7d22b4d60b599ca5ccad2cb4418a21284d92eb2ed27616af1117a063"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

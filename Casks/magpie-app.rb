cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2207"
  sha256 arm:   "ec40528126ec678a66f5d6523b41faddb8077b00f57ad755a30f133a4f2eb8c1",
         intel: "6f6f298081a6b9ffa26b263f1d8de84556270ed326448b96aca93ffc75724c0a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

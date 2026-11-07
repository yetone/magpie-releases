cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3230"
  sha256 arm:   "d7943c5eecafc9652d3da6ee5357c131dd08a7be0102d27aca0d21447e17507e",
         intel: "f58aaee4c7a9806b4e67446f3bff70708cf1b143559e63ee24289cb8bc6fa16d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2493"
  sha256 arm:   "898a8463dc1d076eaf9fc57511da9e521ed1021fa23186e2d0266973761baa62",
         intel: "c5b8adbc6ad44ef69db5d5c1fdb088affbc26e7ca4b065089d0825f754e45059"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

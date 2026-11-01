cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2639"
  sha256 arm:   "d550c907edf6097287caf97678f191ddce90345b3c993dec9f18cfcd22d8fe3c",
         intel: "46edd32bf53fce6e4960787efc644c239c02981648431f87fa20769d73f92c4d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

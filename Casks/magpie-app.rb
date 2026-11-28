cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5012"
  sha256 arm:   "8a8b469d6fec8debdfee7d13fd6ecb7850f18924b6bad29c372ce0147f85d8d2",
         intel: "aa995425e70e263595acdb00441c4bf8c219b14e40a4b210143d5643b144fc40"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4450"
  sha256 arm:   "0d9dd1b3e66b27a9b2d4a7fcd36c5958faec73535b937c55a623e9221b614c4a",
         intel: "03b75d08aed4fe3efb0ff429ab34bbf37fd5f6c76f232dd30e7178993129850a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

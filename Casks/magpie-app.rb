cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1164"
  sha256 arm:   "f44dc83e586c10a1d5eb91dd52e2ec8c9b28c6ca53c23bdc5b6728376c097f51",
         intel: "a10c38d1eee96a8e9cda837482f8ef680056c5943274504eae5d765a9528ba36"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

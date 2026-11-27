cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4921"
  sha256 arm:   "a460e76657ed073008b7d26df43f436c6d9594907687b8a3d9dc1b3f0417ba63",
         intel: "b5f95b84c471d8f1b7a111b9389428ee3c618bb7ffb4fdad86dea01fa3e014dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

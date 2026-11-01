cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2562"
  sha256 arm:   "301435515f967c40e12858d90a0c4f4ec40efff36f9214e2ef19c4e6acd95193",
         intel: "81a6a62bb98e89cf17e8efe29163a2bb7e01cc3d45e29561fe25a0a4dce92460"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

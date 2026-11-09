cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3466"
  sha256 arm:   "63d26ac9d373bc04380536ced1f2d5d48cabec727ec165a6171ccbc046629bce",
         intel: "057b90de9dd9743a0901f9f569969fd7767b8b55a9320882e9067f6de5ca5c4f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

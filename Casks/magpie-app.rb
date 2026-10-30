cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2213"
  sha256 arm:   "070f322329353749b8b3378f83a84b265a6f9c1b51fa25f533852013c5dcd1c5",
         intel: "c7d78c846c108396af2887606fb7dfd17cbced1ffb2541ad2bd010825ab3c93f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

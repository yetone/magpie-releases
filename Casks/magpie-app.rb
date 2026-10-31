cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2492"
  sha256 arm:   "6a1697358c602b6e3b9bcf61c6373520e2c7707e20a069a99ea65a167fae82a5",
         intel: "41e177d24fda3ee749add3f246ffc4d5c82bc3dab581c4d82043c9214698209b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

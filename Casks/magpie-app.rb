cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4138"
  sha256 arm:   "bb712cb9b299439ccfe3d8f2fddfc815c83bec5f7f753d6974a4b43c12d3c24f",
         intel: "d4325c0e20033ff49026c0c345932420f506e0f1a7b596ce7017ba5f2eab06ad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

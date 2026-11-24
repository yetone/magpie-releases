cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4766"
  sha256 arm:   "18596f6ffb2f2f3d8cbe7456f04ddc3f13a24a3b7e5d1743b020bda759c9ebad",
         intel: "1c7a852b8f429eb3fe8a47e3cfa8c02403953b6f0c0ca9010f0dbcad927682c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

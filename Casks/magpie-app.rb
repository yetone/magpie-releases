cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2237"
  sha256 arm:   "c36b4ad5ec8e7623c3648067fe8820e73c2c6e3b4725d8aed36d24b94c214e4f",
         intel: "8f0fca67835446569eac63fb013e13acb2ab2e7997ea2ed2e85cec69bfdb6d2c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2446"
  sha256 arm:   "eb5f5c7fb053cf3c590a1c8d8f158b4226ca3d1737d22e18c53258f1cb9b6014",
         intel: "58841b7d0a88945c973cfa98a1388434a20fce576bf4801555ef03df561c4f49"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

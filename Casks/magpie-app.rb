cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3482"
  sha256 arm:   "833ab0e65f05afcb47a0815a0861da8b2ad817264fb4f48552d1a8f0108006cb",
         intel: "4fc4d6079d2db429d238892990a1663094f2ae6697e92ddda4e36641a39aa76c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

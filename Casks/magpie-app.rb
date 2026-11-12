cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3949"
  sha256 arm:   "bbcfb3d8be5753e6d0af973496386bb337c361a6493024173397d343cf4299e8",
         intel: "83bb741241ef9d724a18fdbe50aee7ae141dcfd3bafbe4d7bb115ae4bdd5c0b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

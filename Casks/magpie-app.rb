cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3811"
  sha256 arm:   "fce2a53afe60cdcf48e7c5c5254167e81a7cf58331cf6b2e97c4f14f3c8a01d6",
         intel: "bb3908c8d1a4ab76e2bdedcc8173b4083eef197b59181a142cfdeb1e70f19a2d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

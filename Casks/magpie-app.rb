cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4757"
  sha256 arm:   "bdabb64eb900d64e2ed93c67a2c46e3de738088e58cfb0b60b2a7e93c69d09e1",
         intel: "beb43d0910f24788ec84cff33e76e3d0345a69f5d9a1e3355e3143d4f5f89d17"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

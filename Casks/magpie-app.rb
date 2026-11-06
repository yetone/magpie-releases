cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3128"
  sha256 arm:   "58860129af86544fd0800ee1853949df65dd5990431e785d54209c3484e3d053",
         intel: "a2f8a6a91f5ca37323f2bb7a2518bc34fdc4ffbb7975a9791783aad624efa958"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

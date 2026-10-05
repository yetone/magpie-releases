cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.957"
  sha256 arm:   "de61435c3defe21325ea1debd883ad22e9d728ae67328b8e9e75d65294df7192",
         intel: "f52a4f5cbf7d0666eb27211be594b2da48c2e06dcef3cf9b7db3763782c00f99"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

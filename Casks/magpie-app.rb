cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2173"
  sha256 arm:   "7d5a3d925247518b7f785b24a03a1de8f245fb4dfcb6ed0a01fcc43c7f186d1e",
         intel: "e53d4f054c03b28298f59d2267eb2f70ed6ab5c367a9436575f32161ee4e2c8e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

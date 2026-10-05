cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1031"
  sha256 arm:   "0f80699a059ed486565eeb052f116a14135f6683e44f6aa5adbf4b11ac842e6f",
         intel: "0f7be5768e288ba57854df3dde601742471103e37b35edeeb9f09b1922cb269e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4435"
  sha256 arm:   "37f0ef29653e9d542cc6cdf14d65cc86eeea1d04b7b5f476d0249c286146789f",
         intel: "b89f0873a63114841e2a958315f908007e81d7658a73069198c35b078b46c0cb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

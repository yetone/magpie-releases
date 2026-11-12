cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3836"
  sha256 arm:   "062749bd966004e495b07fdaf7af2d4488d6f6c2d33b4203c06dd1721a5ae7b4",
         intel: "8978d584e964d8fec379041c6f1a26e1e7e015669e22d9db845bd80cf9935a2c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

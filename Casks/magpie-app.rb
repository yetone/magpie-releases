cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4305"
  sha256 arm:   "5950750a2f1a29532469723420d37756a6ad1743be01400add3ce4915f283aa1",
         intel: "11550120ea990afe990fff5f922042c179bd43e1006bfc0990d67ee9bb5db2e3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

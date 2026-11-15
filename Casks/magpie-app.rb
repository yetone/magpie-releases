cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4263"
  sha256 arm:   "088d7ae00cc277c6294cae21fe2eb9ab50025c4cf45d8e643626fdb7128f301e",
         intel: "20056a2eda41ca13be87cfaa8fa267acd2d1f60626122cf78cd10c09cda686ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

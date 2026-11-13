cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4010"
  sha256 arm:   "e0208016c6eb8d50af658d273c22305651f36a1f331e2df7cc9a8fddec739a7b",
         intel: "95bfe1330ddd9f3d43eee791a84778bb547b0a0b0a90b686a7b0342b183893ed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

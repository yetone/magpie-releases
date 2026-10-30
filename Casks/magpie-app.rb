cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2263"
  sha256 arm:   "74807e0f3af381409883cd0073409a98ef76673f8fdac1a14334fc20f452b00f",
         intel: "2e5482c1ff03105c96279bf70683b3ab6d8f942ea65d57409da1d021d0a2e8d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

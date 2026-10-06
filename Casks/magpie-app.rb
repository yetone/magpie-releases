cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1087"
  sha256 arm:   "e90cfab073fa4d07f057344dafbeed343b4bd1fbff4f9f60034d1337f67dff5e",
         intel: "0d9493d02f5a3e643040286aeefa4135e2936cacca468250d270a637b889bb7f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

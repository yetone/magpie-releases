cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4467"
  sha256 arm:   "0ca9480bdb4f10c4343e35918ee7adec100f8f00fa28828b5212cb132235981e",
         intel: "4519b728ba76cb5037389f1f9465d1e691c52539dfe4a2ea55785d0a0c67beac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

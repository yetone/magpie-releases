cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4273"
  sha256 arm:   "ac0820cfe9ed3ebe862dc7669fd70e78cf607ec00d231d3a6f4f3a264dc5f845",
         intel: "0c2e7328de2aad60b833534b94653f2ac444b31a1c7b0a8af97c1c9894a9563a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

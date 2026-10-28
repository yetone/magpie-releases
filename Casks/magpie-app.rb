cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1849"
  sha256 arm:   "a3c690cca4d5b782cad7602511798587d8d0d7d63ee23b24d228d810e05e0a66",
         intel: "8ac4a9e2af364671b26a2ccc83f5e49d663a2e472113de1a0d425216d143b21a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

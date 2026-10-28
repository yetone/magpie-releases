cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1947"
  sha256 arm:   "aab5f6d9f41900be2517d25c14418e32a3be4d5898c2b51599263b22c7a696e4",
         intel: "fbdb42851e6ca216006dbf9152c77e0748554e6b4ceb8e8d1b1450252440173d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

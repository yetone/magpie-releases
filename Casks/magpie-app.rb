cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3704"
  sha256 arm:   "1e63d7b9a1f21314483168dcbde52e2c6f4986c9a22db9e82ee4c9201dd842de",
         intel: "630bbc4f8be85d9552d44ff03793cec28303cd1e5a58d0b10f9e696828cb5393"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

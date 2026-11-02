cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2720"
  sha256 arm:   "0e049f97d256479d21755c9dab9fb5b7b5ec18b3a7375502cfd84ebef02f92e6",
         intel: "30494368cc176257fa6898a21880066ed9d6dc91d475cfc0b062e620c7300adf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

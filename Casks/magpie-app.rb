cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2517"
  sha256 arm:   "641d9e18a5101347a2975889e1cbd03a83d511adf07cff72c555e63ad5c78f12",
         intel: "b246dbad1cf0448db78ddbb4f950c733b2d34ed8f450b27743fa5d30e536140d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

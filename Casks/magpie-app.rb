cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.981"
  sha256 arm:   "ab059c29dde1b0efc30e0e61da1ef41121d7805de8bf5b37e0441c5032c82ae4",
         intel: "8a55767e9d25a366c371677fbb45f87553cd791f9902ad307ef01d1ff0af3ffe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

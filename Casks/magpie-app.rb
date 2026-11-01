cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2551"
  sha256 arm:   "d5ff5faeb81d307acc54e1345c88a47c0f5175d81bdbf2ba151cad7cb801d029",
         intel: "637e9c7498d15c2428be029f7cbbc49d3ecea9f3650d336c80f04307fe8522fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

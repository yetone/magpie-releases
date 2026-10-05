cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.989"
  sha256 arm:   "72a4e0c21ecce1a087a51512cad4bcc6e09653c8cf917ef5c5a12eb29f01b70b",
         intel: "30ca1c67a84f44dd81bdd08136a35ca6db610f04a0c236086a05a0286f9a7609"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

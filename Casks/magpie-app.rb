cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4986"
  sha256 arm:   "9775591294437acded5e3c3c234ae3d9c1ef2a2504b29e60ac1a1b970766e69e",
         intel: "3bdcb72d9d1833acfe7d595413182ab0aa62005b5835b3792ecb43cea42df7d6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4292"
  sha256 arm:   "95ebc70a233ccefea01191d5ec76c300e44de4c5280d9cb6879a47f3c06a5e15",
         intel: "2fc4a0538c84e6e2bda9dc51a08cc35caf9bed8e0c7bb1e81dbb206de349bfec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

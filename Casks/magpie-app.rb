cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2399"
  sha256 arm:   "838a7b2d6028d71dced11b0cb22d10b27e83527180d994da45a1c8fbae8b8d5e",
         intel: "74ffb7280b43e5537aa687630f533f3c741a69feda584fc8a12444dc6ab0bd83"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

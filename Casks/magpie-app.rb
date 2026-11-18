cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4480"
  sha256 arm:   "87a0d11ee0b9e1d00702e64f3c5eae97b75603b90a8c9bbbd41bc6ac73afdf8d",
         intel: "93c6a542c77afd9fdae7f22b6ef1d8e047e2ca29670e1c02ec3379936269cf77"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4647"
  sha256 arm:   "f4d8427fe80f79b5d1899d9d1da1c8c8954eddb3fc439e83fafd99b73d2b8f9e",
         intel: "d5d9d82074c2e3b7d46c4e4a2b16a5845c288cb37c2a6c7fde7b0167cadce173"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

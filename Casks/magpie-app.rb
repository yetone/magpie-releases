cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4980"
  sha256 arm:   "0a2e4a0d79c5b3388d168f02a261f4fe1f749e8f56f35cc9d6e060a38e5cc436",
         intel: "32600027b0e4821b83dd655a61f189b0efd9f693206c995aa781bb28edff50d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4911"
  sha256 arm:   "5fd37e7e02a8bff74cf113964d1e9ea88b9fefa7473ce19a08e1eed64d66a2ff",
         intel: "6f87616f0b9747d36ec391c61decbe153a8209d2b466cb9876604a5f17291312"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

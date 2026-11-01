cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2516"
  sha256 arm:   "2c1c2b0770156175cf5ad96be4fd9e848dbbcae7a119dbd7d4025c75b500c7a7",
         intel: "35eb8ddd180f359b2588de964d732dc09c991417fccee5f67d07a126b00979bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

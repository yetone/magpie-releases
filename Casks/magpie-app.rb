cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2393"
  sha256 arm:   "23300f12c2c42911c555f68cf55424d2a49d2d014a913de22e3baae8febcb037",
         intel: "1344023f7322725466b3c65258d25e091b8d3c4d4ba7792880f5ae679463d6cf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

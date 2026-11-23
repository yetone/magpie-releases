cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4704"
  sha256 arm:   "55a286a91be611dbb36ceffadc5272f79d6cc2fc98544f38333d986c07db60df",
         intel: "fb73277a13b234abd3dc1e2c86dc0c39933793fef0c42a250a15078de5898537"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

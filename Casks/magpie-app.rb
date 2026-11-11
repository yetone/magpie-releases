cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3681"
  sha256 arm:   "01b3c0eee1d32d046caf87bf491f2f340e17a401ed390866f55d435f86d38ee6",
         intel: "052e9cc73449acdbfaa3c9c8526b6682ad35eb729ec76efab058ec329240dff0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

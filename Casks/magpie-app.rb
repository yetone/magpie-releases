cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2607"
  sha256 arm:   "da557aada046429c833848cda0966c3c4b0f54a4a8e93a859604c0dffd98a817",
         intel: "f3c8552660178c033362bf27db7aacde928c5216dea597fdd603948dbda0f6ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

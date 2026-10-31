cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2296"
  sha256 arm:   "04ee316c319e8183a5b856502a77e052559ec92b92164ec8487d998e8b721d60",
         intel: "117bae4ee2d2d4401bc623bbf24338d8e4ca4dc42fe363ca901ab65cf76942fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

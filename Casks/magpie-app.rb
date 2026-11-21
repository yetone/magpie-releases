cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4628"
  sha256 arm:   "2e11eda71a2f4cfc5d46c2ffdd050410632789861c147b357891ae758fbe656e",
         intel: "e74fe5e0b0ed63df349f0bc8f2b84d1169e14ce72ea664631b5241498384b322"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

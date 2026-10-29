cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2063"
  sha256 arm:   "71903b2ec08e11a4d9eaf762f2fd0ee93a7222d260e2c0243b2a24f7b7a1203b",
         intel: "4b9a92c21454d6a823c8a1a5c51011a81d6dd640c5704aca7033dcdd0dcbc020"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

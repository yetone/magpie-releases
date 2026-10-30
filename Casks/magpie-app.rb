cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2246"
  sha256 arm:   "d8aa6856c6ab91244b504d2c3261d30f4c818c50095de7a095b78ff71cc3310c",
         intel: "73cf323e860021728df2482a918d578624329ae5f03b33ee3f6088ed97b80f4c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

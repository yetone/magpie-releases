cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1108"
  sha256 arm:   "ec7e09e2a654d57d99ead94cdc9bc4f02f79e07128fe3f6c8f8208add22bdba7",
         intel: "d5e7a19f8382c1365c15425add2c4a3b58c3cb5235f7b54d2c71c7e00bb3cba7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4725"
  sha256 arm:   "3b42b71990d49491c2efccf81a09a201efa954b798101f08d870e96527980570",
         intel: "4288d8649ed0759cdba962f5679171fb03a50d0a14627d712728090bfef108ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

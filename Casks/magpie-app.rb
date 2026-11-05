cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3022"
  sha256 arm:   "b4c41e1ab99f74f428c8b8616f0d665a753de2cc35a2713172a7b930994ce2c4",
         intel: "e6cb00eb0bd3e0a04e5ce31e768d45737f9e7f6b3198f395fc1ac9851095eb60"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2816"
  sha256 arm:   "7e4674a9dfa6c93e24d960630b960cbda4348846e9b4ed3f533b1edd6f0aaa98",
         intel: "adc4fbec1b67646ab12bd401393c085ea0f8aeb6f8ca3756341787c3935d17ce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2072"
  sha256 arm:   "950f729a0e2464bcd8cb1ff75448870ba38f9d8ee08cd82df831ef0eea07cd44",
         intel: "572badb9472dcf37cec652ef71cdf14edb4f96dac5fe521736fc76a24e3002c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

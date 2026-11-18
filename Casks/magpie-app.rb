cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4473"
  sha256 arm:   "b79cc0c39190d03d072e221e13db1927fa08e024df7c59ef3c50f187c7b5ac91",
         intel: "28bf6e9f2d725ed260a7bed0168a958dd3095adb1a62bcdc048adc25e2185cc5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

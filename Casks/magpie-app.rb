cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2122"
  sha256 arm:   "4b3e2e1230fe723cf24894eefc7e58547c876e8f10f21fddee683f55c9f06a2c",
         intel: "5195562021eaf7ae6ab12f18af48593ecc8dc36ae48e4a382a4a95cfb558991d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3993"
  sha256 arm:   "830e010d754c7385c084feeffd3f518249a57ae8fcfbee98def1b3cc4d917b3d",
         intel: "4dd63de39c1ea70e954d2f4c05161cb50f7f7992fc2a430e7a3d49ff9e4dbb13"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

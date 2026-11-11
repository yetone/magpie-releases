cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3756"
  sha256 arm:   "31bbab9c1a5d26adb8b84c0b1ec0029d85e84d5a7d7a4a110c21e0ea662a2cf6",
         intel: "bbe9474ccb8841ba7d666980ba3095f8759829aec313d3dbac7f61e685cfb236"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

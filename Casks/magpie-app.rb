cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4644"
  sha256 arm:   "fc550ba1cf0d9706780575bdc2d0e99044af874f1ff7b35bab248d33c6163b74",
         intel: "b59156711482984606b1dbea511eb21ca685d597dde6a390748bafb567cf0b58"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4319"
  sha256 arm:   "d60125cbd7113815562d15b51d63b5847df9d0b6ebac6ba23a18e6045093060c",
         intel: "0095cf3d3c9ec94395d79cce2345fd790e260bd2882c53a33e18af3915762165"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

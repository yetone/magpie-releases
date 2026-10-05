cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1037"
  sha256 arm:   "f18c59aff232ab863151f980a7aace93f1a0938363386d8e08c0959bc63133b7",
         intel: "4b0caed86866fea7c3f8a5c30e66c0df9a1d084f97c2b59e6df935ceabf12276"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

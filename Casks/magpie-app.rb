cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3923"
  sha256 arm:   "fb9da2cb5962bb59a2689d2aa1e3d34d35cc318bbd92367483c26fb642903d37",
         intel: "8ee9fc5385b6c19a33e0b50431126b002e059e9e0fe922177bc4faee51cf1584"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

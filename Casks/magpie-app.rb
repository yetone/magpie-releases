cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5013"
  sha256 arm:   "f91e0c2eab4f1821b0b8c5513c7d14931c7d9e1a999a3fc80dd0bf112728f4dd",
         intel: "f8c4ab0fd6422d273da76c8b164e06c0e9625aec6d6f8d363f23c03dc7be621d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

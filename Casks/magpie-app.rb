cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2402"
  sha256 arm:   "06e94c6f50dbc1631a5b220d6cefebcc12b4719be2016009fde3cbcbb8b8755d",
         intel: "7b90f24500b8e5932446eb6ac60f07dec7c0e4064914c12b5dfe80cd39c8b06a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

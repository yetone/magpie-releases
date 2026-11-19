cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4554"
  sha256 arm:   "48056319a7faf499d7af87c4d8f19d9d371f465adb09c49daa19847b960d0ba8",
         intel: "4b95b90e000cea10c9cecf514ff6517db432293be0cc27eee6d1f24f7cbd7f83"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

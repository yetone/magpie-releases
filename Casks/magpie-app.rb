cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1925"
  sha256 arm:   "5a0c56e61aa096abb62a4ffd9335414746b48316e09f823043c622689f44cd43",
         intel: "7d54abc74ed8f54ac8efe508cf8fa6f48369bf98489c274fc7ea090c7c4e28be"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

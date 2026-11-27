cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4965"
  sha256 arm:   "22879e45fc143c6d44f061dc517150b433edd0aeb3365ed090256d7cbb3c7e5e",
         intel: "75468ee584f0e70f1628c0176cfc5539bb7b5ca3244b72866983478ac7ea7291"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

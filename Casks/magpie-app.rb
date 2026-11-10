cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3607"
  sha256 arm:   "4ca0cdca4405b0eaff9815c4c46f444cd1c252de84aac5126233b883ceb0f136",
         intel: "3546aaadd1c50fff0f469819514c5e2efbf19237029482a5f9cb8e02299b7fa3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

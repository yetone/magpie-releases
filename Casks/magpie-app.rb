cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4501"
  sha256 arm:   "6d2968b3f73d8c6f50f8f76121a39bd4a8e30ebcd5617d17013e4bff747e5e75",
         intel: "00d357d461ef60cfdb6b4c5a3788143a27e1dd4e88793665b8ed31709cc4c789"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

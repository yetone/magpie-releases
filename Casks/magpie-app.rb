cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2845"
  sha256 arm:   "ad021dd08e9d08bea2298046a0f2978e975eed63a18c98460614c23fb295724e",
         intel: "78c5aacda68268c6ea3b1c2b1e363e0aa6a99c4ce2381b6537fbc5c555da2984"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4525"
  sha256 arm:   "b58dea203a044b07640abf8a2d938919b24f8e6f674dc9faaac401fe7e3b795b",
         intel: "b1264006569c3722c8f701b2fb189e03693d292325fd8cc37f02ae5dab2ca14f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

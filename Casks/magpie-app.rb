cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4933"
  sha256 arm:   "34514a5c8d2c18544c29cf7a23782ef7e82caa43210e42007d82a74c9d5a82ef",
         intel: "c7b60a805e4f2ea90074b573c8cab73cae02839048bb71b5e3ebb77972814f7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

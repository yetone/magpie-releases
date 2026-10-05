cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1021"
  sha256 arm:   "ead005fa1206b3a3ec20817912069f9e8e667953b20bf8133b03304eade8457f",
         intel: "9e309742db74fed1e4e5e0f02fc44894098f7c76d1ac2aebc52234a6050162db"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

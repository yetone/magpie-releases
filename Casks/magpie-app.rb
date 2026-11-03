cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2852"
  sha256 arm:   "44ca1fc54b7ed334d23881a46f538a67e42b06ed421b25d87bb24884522dfe57",
         intel: "60a5fa8a87b9ec9a2e8b1789acd1e5666523e154e0a6b32059a3e4153946ba2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

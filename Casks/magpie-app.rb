cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2140"
  sha256 arm:   "7290a2bed7079736b7a281a1750a84d612f5e34d4db2a791148a416f8ec39772",
         intel: "e36f8bb360dff22a0d874543e3f928ec2dd155afc3188d0f0594bc7ec083a928"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

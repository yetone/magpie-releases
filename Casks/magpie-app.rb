cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2239"
  sha256 arm:   "ba887936ab139fd6a5479e7edbae361ba2d716fd6bff2cb2cb880a31c2c1704c",
         intel: "43085086531482827156e357d8fc738a9c83e1ccb986dc6c454f23ad078fc7d3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

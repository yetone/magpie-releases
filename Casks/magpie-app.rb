cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2212"
  sha256 arm:   "767dcf8f494c1114fbabbdd94a2989dbfa8024be1a580456907aafe4ceae56c8",
         intel: "6c80fad6b92f48b36b0b4c529b4dafa97509e1ba76dc79e106de527ec68e5349"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

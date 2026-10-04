cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.920"
  sha256 arm:   "34127d402a1988c5723cab13a63c877d19b2285ba0a07ff7c624d3ec5d8ca02f",
         intel: "0f7b56f1bfa7108217cf9ee765ba9d3312c841f4e806aafc7245eb40acc58cd8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

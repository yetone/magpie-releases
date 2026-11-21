cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4652"
  sha256 arm:   "ca6c36dfd3756fd9fdbc925948eee9c55cfaceaffbd489768bbce7407c78e9c1",
         intel: "e1bc7930cc71dd793a82c9ee9d8e53355a99cc4116a7dbda9aab1b7f0b81a5fb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

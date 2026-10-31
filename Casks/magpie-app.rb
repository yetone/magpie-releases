cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2501"
  sha256 arm:   "e4f5d80e2794031ee7d0b1fee17bd589b6dc0f633b5a2f541ab6c47f8a6d2fcb",
         intel: "8366ce5ea05d7f2149992bbf8a78725f0e618c4b59ab3a5b58f5b0e4decc2aaa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.972"
  sha256 arm:   "a7d27e870a14d59b1c48f40ba7e7b5dd6198c5c078bcb4aec37625a4b2677b14",
         intel: "9f02b7b613b214beef567ff6144f60ec70b263c4dbfafec4935d8f76ac41e5c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

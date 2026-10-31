cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2327"
  sha256 arm:   "7421ea8f60e127206cf98fd15e41991fef7da9d51bcdf118509e0c08f1ff5fd9",
         intel: "d58216c56b7aed723d7aa499c8c83defefe246e293ac662fb92d8a0969cff68b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

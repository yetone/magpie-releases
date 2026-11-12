cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3834"
  sha256 arm:   "7ffbc7217715a4706cf1bf5194f0779bfe70e8d830ff9fd44b7b955121bb020b",
         intel: "83b6d2e26e2f16beefab47e7df54edd963aace87e7493b6366ba499a6a18afee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

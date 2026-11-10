cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3585"
  sha256 arm:   "0360a36b960b0763b82ff0ecf30c5ae93d3633d09b1bd8f43c9dfbc3ae7c10e8",
         intel: "ac94e5e1c1a90312e50d3dd6c97f93f2ca49c831353fce715d50c76f6e7e8b19"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

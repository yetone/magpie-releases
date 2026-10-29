cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2077"
  sha256 arm:   "c166bcc66fd1137ae5dfaa47ec6c02eb9fd2f7934fa4f8adf100bc9692c2847e",
         intel: "1249d91b3eedbb70ce633c0f93107d1e49b96376b3471ee970f6ca3941d82133"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

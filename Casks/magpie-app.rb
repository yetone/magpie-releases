cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4345"
  sha256 arm:   "09afb19745487e014b4578fd75b81161a3121200181cb9aa08ce109140ddb157",
         intel: "0d2481d60ebd89cd8613552de23a15e682b981c0f08a94cce51c2b0e22a39a9b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

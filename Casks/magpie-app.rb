cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2232"
  sha256 arm:   "da7ca03f7bd7a143ce53af742af3d1c8a15ff7299f620803f5e30d318e903bd6",
         intel: "1525ed7501c950dfc5cff5154cf43db0dcdd9e85ec737adeaab43c901a3521f3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3295"
  sha256 arm:   "953c0d676885998fdcb26e25e52265ebb09f00e85434beff264e8cce78f3aabd",
         intel: "a74948e66715c327a4fadac25ae9f5fa65bccade27a352d0cec08bff5fb445c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

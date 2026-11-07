cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3265"
  sha256 arm:   "c1dd3fd6acdc7d62e53c7d1aa3f712d8fe13d5fbabd6347c1e47b06b877544cb",
         intel: "031bcc6e55aa026726ac8382a25373fccb758f09edb52ea5e87182123b808c52"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

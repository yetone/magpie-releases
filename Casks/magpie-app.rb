cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4503"
  sha256 arm:   "c8bad5e6f9543097aa62f3d4e30c977f00cbd479bdac7e2301eeed54b9a94790",
         intel: "b2d99f8c1e9a40fb34db8ef4031629733f0f638f98ae8fd6037db38cde532caa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

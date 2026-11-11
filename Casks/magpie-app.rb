cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3743"
  sha256 arm:   "fd96320e7415120601ea61ef4e50092684b787544f182f60626f0d902c1286c3",
         intel: "d80e32f542b8eff853a76a2b80ab7b23a72d2a6ceafd8f42a7536fb7bcbb163f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

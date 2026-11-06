cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3136"
  sha256 arm:   "2c38d719923b961141814b94f30ad78132b9b024ae8415f48e0f8f8b7158055a",
         intel: "cd7f2cfb45f151cafd28c09dd1a5c2e197f5099c1f0c9ae191150be805f3d02c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.900"
  sha256 arm:   "e49dcd1d6bbb720e93d226b63bf28b629b58c97eaa72e8d60b8a025e0bcb6638",
         intel: "d4de9c2e6ec81e5cf941b5acd6343c4f1489a624cde93c3e36350791e06e83ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1127"
  sha256 arm:   "7da1751d7a58ef02eeeb90425c6b48af86bd8a64077aefd74179dc5348699789",
         intel: "7311b8d7455003ad547ca014a7b0e98dcb293cc574ad0bd8169a9f16e361096b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

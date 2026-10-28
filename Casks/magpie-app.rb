cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1958"
  sha256 arm:   "a8d994c43aaeb974aa4161fc9e117d4dcfb6e2671335628368499880ccbde944",
         intel: "f5fb4f538104f710dde31afba5578814af63f66b2cbb7728c0f622095783ab48"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

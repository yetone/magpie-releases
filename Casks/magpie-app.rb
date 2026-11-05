cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3036"
  sha256 arm:   "35f0e1873e66ac2cade7ba494998f1c093a7efa76c58c11d44d4f99f1fe745ac",
         intel: "efede5abeab79ef8a2e37b0ffeb14ab58cac3a0db3f7906c67b6a3a12bb1a7bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

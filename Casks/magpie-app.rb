cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3009"
  sha256 arm:   "381adab3549f5e2ba17ea05a73a1f0c60933406456752a0626c1dea80377776e",
         intel: "ce48ba49acfe003ffb21ad6108a9f45c582b3b7adb52b25474a1b3890a6612e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

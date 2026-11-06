cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3180"
  sha256 arm:   "4257d43cc144c196b7106985cbe3aca0dbf24136470651bfcf63a9e701664004",
         intel: "fc5045dd0dc0ce0889c6fb60a9cf366467a02618106c1ec10232c92e910a3fce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

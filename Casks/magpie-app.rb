cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3403"
  sha256 arm:   "bdeb446a9c2567a6644a9c4bc8747b2fd4d9f77b541d745391e900f85af95e4d",
         intel: "8ab8f4bdba2c246ac1d112b89090c16df41e0eb1f04bc8c2335ea57ed086e640"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

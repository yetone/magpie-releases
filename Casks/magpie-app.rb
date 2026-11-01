cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2629"
  sha256 arm:   "ceb8cfb730a86f6bbd641d97cfd61ed6e8a20d3b3f77e7b28a8050f119a3ff4c",
         intel: "62db8a5f44e5c9085b692c50bdde930f6647e0521f605ad3dddd235bd27f1102"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

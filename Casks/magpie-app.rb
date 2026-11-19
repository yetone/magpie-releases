cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4539"
  sha256 arm:   "9fba955330d51301ec20c3c875aa8d6f25e9494d8aac274ce6bc732d2a4a1e41",
         intel: "630d427ea722d05bbfdb691f2fbaa4677a7c4ef1c289306e690eeedc8b257191"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

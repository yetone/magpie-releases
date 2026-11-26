cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4852"
  sha256 arm:   "c95fb1411569abbc22300fb557ae5a8d1318a885184da76e20c3673966c40e41",
         intel: "243db8bdb4408ee60be8eced4545a45d6a579655fcde83ef584de56329a1f5d3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

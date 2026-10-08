cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1120"
  sha256 arm:   "1309c6c0ca524d7e0d3a73644d2e60908c60bfcdd11b91214da0967fe89fac18",
         intel: "b18be407dffb7d286f128d0f354d1770cbf27bac45d3db9c540cf8e793fc47f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

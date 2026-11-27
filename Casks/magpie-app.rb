cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4936"
  sha256 arm:   "31c7d27e090dd6f4d933d59e55ec8c58b0829692af3446aabb20faec78b2eb78",
         intel: "14ac79039fa8ae3cd9a71a7cc1b18a934582339bf6e2e4e222790a181187b410"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

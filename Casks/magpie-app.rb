cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.907"
  sha256 arm:   "6f7b2e5a0274d7d63afca0170682eb0a41f4787de616cca680ac243f232979f4",
         intel: "297daabc8159c22efa54e60c8658e9def0b6a267dd27e7018aae89778e2713a1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

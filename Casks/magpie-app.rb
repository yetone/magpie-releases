cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4178"
  sha256 arm:   "ebade1b5ba88b57cfd893b202db1b89ca8a2a8c19c4432150b28cb2d4b5af3f0",
         intel: "9e40fdab6e2455698536016a280bfc374441ceb84a32679b8542d55155983dd0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

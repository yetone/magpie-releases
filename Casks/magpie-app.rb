cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.916"
  sha256 arm:   "2cc66604b558e5224c5900678cbe179537c7f917ee087f97749f93f3f69273f3",
         intel: "5e42c28b1119d21bbcd6c4258ce66dd6aab6488aa912d2145105640b3cd46518"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4880"
  sha256 arm:   "108c5a5e693acf8a8dc7ae5304fb487ecd55744bf99a45002f9c91b7ce5c11f2",
         intel: "b96e5495e0266f4d0fa4a207562d2a14c1019e15384d667492350382e6e79e8d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

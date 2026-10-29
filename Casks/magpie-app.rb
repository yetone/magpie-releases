cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2082"
  sha256 arm:   "403c6bdc9f75add3da10bdfed6d0f57eaad83fb2ed17d98181825c3deda087a5",
         intel: "25dc3fab785e28db7419f064a39fda4d76f901355654b819a1ca693223743aa3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

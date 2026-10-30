cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2187"
  sha256 arm:   "6ccd71c85b4ee63d75022161ab4a8d00eeae8229dbbd79f5fcb5a9ec3096bdc0",
         intel: "089e5d2f558cfc78d33f32993d792e89b6320a987a71574e4c5f1fdb6bf35105"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

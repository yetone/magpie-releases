cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3997"
  sha256 arm:   "7037c5430dc60ddca7eb1024c9c071ea8c7e4ab2b7e1c476526064f91bfc4c4b",
         intel: "b92a1b240e9c432b428c53ee8d1a3e56eb0023044af3230ff7e8dfb786147e9f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

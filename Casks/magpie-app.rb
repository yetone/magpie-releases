cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4819"
  sha256 arm:   "93233bd0aed88e5598c789019de0fb93775478fc32199044428b173687ab0d0c",
         intel: "ad32d297f536cd6be9582b6c2c73e14c259b2f09a29d0d1c8327b002e1d2337b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

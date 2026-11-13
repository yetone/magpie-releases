cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4051"
  sha256 arm:   "2ffa7cbc464421c22ca9dbb934371104d6cfef11fd3be2f391123bd271dd327a",
         intel: "2d191fdb4157b90fab5a9e5e53e7a337afa575ba2d9b304a1e9bbd4b1394608a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

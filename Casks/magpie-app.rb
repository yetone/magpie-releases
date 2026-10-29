cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2002"
  sha256 arm:   "9a394a8ab955c5dab8a0d97e1bda8c8a8919e76a92b17d2259023fc5f10220b5",
         intel: "391f349c4bcc933ce60dde6a67099e2b32b19e212ba66e70c87dcf09e9d1374b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

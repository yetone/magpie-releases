cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.925"
  sha256 arm:   "5442c61da6c8e6ff7b3dda4b718842513e05a45de68e62e137f153b2272e9773",
         intel: "209c0c946f82c214dac5493eba12d1f710967f1ddd85c6edfd154fa46b9b5c70"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

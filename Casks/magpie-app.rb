cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3263"
  sha256 arm:   "d7cead6c9d7294cd55a63890d4c172c7dc1db633c9aac320506de7c8d3b54f91",
         intel: "c0989d8c54bdf31cae27316bd280c0993dbf1adf2b8d0bcc80ac33acf4f1347a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

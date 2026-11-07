cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3276"
  sha256 arm:   "73ae8a138ab4f0346fc012723d1c30f959135e0271d98536ce4c571d159299e4",
         intel: "1be2358d884f6688a5047ea3f17424e88022b6837cfae0a057395757e1eac476"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

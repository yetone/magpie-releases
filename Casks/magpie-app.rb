cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4748"
  sha256 arm:   "e94cf9b77b8d731406c97935e33ddbbb4c56e1d71afe1d776ac327ec15de904d",
         intel: "7fd3655ba7868ec5ec76cbbd47ae0c653e9001aacbb482bb10e4de4f327ec9c2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

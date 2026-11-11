cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3757"
  sha256 arm:   "bc25ace25718856a7e65654f70e987191da21e39116af63f9dba411897aa33f3",
         intel: "23a06679b043c5330e21ae7f462649f3a99f1eddc443c8882ba1dc7b87b3b1b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

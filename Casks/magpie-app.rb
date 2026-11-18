cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4446"
  sha256 arm:   "5ab61a43a786448a2758e641f3d55cd21c4e50b90781a85fea410dae1ea3c1ce",
         intel: "89af64d9846e830d3afabf3ad7884526a20d63273f3c258df2fb2a8e1dd29d78"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

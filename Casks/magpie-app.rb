cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2647"
  sha256 arm:   "45a661a3ad63c1544521154378ec15ce737085575229bbf405dcf60e55385416",
         intel: "a828a0a8179e3d7bbf5a2f4132aa39c09c6dd5416977057dd204a5436292e3e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

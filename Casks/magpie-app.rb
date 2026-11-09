cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3384"
  sha256 arm:   "607c284d438863d7512c5cba06d1c248a153357d70335e74deb5425a4fc327e5",
         intel: "7f8b939db77d692249f4531546667d501b53d6ac871576affb18fabac97f0d56"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3901"
  sha256 arm:   "2e29f3914ad56783c4371123906dd4da6bb16bab81a37842f0d3ae5daf31ac02",
         intel: "e3d57ada6a8cab129fbeacbec5caac360e28f4ab59b5d0e91be46a3dda187cc0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

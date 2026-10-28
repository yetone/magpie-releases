cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1961"
  sha256 arm:   "3b6598d1f3dac2ebf3c18994814693f5113d07e21cff0cc1a55aa9fc2d505a19",
         intel: "42f5d9afe8e217f3cad16e1ed0c68d0c03cb6f181140955c5cc0fe8c8ea73f80"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

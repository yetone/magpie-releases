cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4256"
  sha256 arm:   "35288bbe29af0625247e7d5001539e420e9864b5b7268e8b82ce61a5f5369c3f",
         intel: "138007f66d3684f5a0d3d5d51a0540889070d1ee896ee6cd860e9b3cf9254cfb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

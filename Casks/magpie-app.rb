cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2668"
  sha256 arm:   "86e47f86772a8db2d03290c04ed7036e2ec6b1fe0641254391d3be0b60942439",
         intel: "fe1ac0cc01e1128e257eed011f33ea0508102b1676830fa83db0af1527e06853"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

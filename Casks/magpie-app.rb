cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4849"
  sha256 arm:   "76b6f7b5e9e5ac0e57bde3d9fd96ab33de50c6b3346191ca112e6cff7cd33581",
         intel: "200ca879673e3aa76b4700f843b39b9504b27ff0fdb7c7831c2ea000d2b13c65"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

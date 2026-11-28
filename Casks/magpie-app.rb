cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5030"
  sha256 arm:   "51fdfa9b00fbcea803c08ef521a87f87d7c1d30dde0e65f51efa3d852183783e",
         intel: "00e86433fda9c8a1ebd361de58dbcf4f55121c9fd7f3c14fa93c65f1369254dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

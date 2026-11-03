cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2768"
  sha256 arm:   "1eec84d3d0a88f18cf1b57ddeb2446a7fc8d141853a07ada14a2668a40860775",
         intel: "8125fc6271e8dc68aca9740bb0f8a858b683318fd7844cf92a33ace7ddaa9a08"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

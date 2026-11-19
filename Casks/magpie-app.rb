cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4528"
  sha256 arm:   "890b90c962ae6491edbd4bb3d3e6f9d69da83febf818bb0731ca1aef4376349c",
         intel: "5f841c0c014810941a4dde90611073ae25f12886f121d86ec260754594a3539b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

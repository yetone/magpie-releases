cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4717"
  sha256 arm:   "de29e6fdf5dcfe24859f304e91e9de20527064cb5239b9069a8705e075a4e522",
         intel: "f02774fb4a7958598cf20578cacbe7b1feb26e918f8884852c30359da13f2120"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

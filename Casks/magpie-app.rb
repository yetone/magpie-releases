cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1864"
  sha256 arm:   "9594437fcaf54f835390b337a63e6ad573bf45dbde2655bd41cf7387fd019ba7",
         intel: "c17c7ac3ecd373174c73ad6fc1c07945eece852001aba259b6e4a702bceb12ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

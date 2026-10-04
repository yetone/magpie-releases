cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.897"
  sha256 arm:   "383f028289f51e9a2e6966d5ded37c34b8cdcf51fad219ecf01af88299c8a56d",
         intel: "204eb55358ecbd45a0fa39c8e3c7dd86def1e1a7ec8e8d28d4d3afb7655cf8e9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

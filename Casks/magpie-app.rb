cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3329"
  sha256 arm:   "8cb73530541dcd5ccda05887c7aae6f2aede3b1e4d3e11d10ed57ae98118c0fa",
         intel: "54baf3990f391f1c1e0f797dc4f2ea669a15d0b97bae6f17bebac0745544737c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

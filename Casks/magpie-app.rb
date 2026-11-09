cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3419"
  sha256 arm:   "dc02284e05941553a9c938998f43979586c8872078c05b5125430f7c573a3922",
         intel: "fb76811869ec9e7cd40d8a054fcca47d927f2e1c10dabc1b537a2845da02d9bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

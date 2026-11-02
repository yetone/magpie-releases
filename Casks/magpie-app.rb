cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2750"
  sha256 arm:   "64c23e4502ef420cc3eb5da1b56d5c088d2572a280c79e1b5c2e0227c21a26b1",
         intel: "ef541b7c18f4685bda5ea20eb3133b0202837ed55a468c28e7e95b08193ae69a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

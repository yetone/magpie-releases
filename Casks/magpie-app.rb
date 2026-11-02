cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2765"
  sha256 arm:   "527f0642827386c6c91eb93f6f1025046e193b52f0c49e1e9051b39c80acfae4",
         intel: "21d5a18c27593b1e8aa3765672fd359ea8a601b46aa356d09c0ad1b936c1d4d6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

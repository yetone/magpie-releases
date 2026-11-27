cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4962"
  sha256 arm:   "49b64c5227ec358972c8e32137f729db67ef021e53efa6a5d51075d2db0e6564",
         intel: "ecfb1fc1447cba308d273f831cc72e86ce907df4e666428f6b8282e2e195a4c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

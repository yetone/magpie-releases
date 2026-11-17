cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4353"
  sha256 arm:   "9796877eca317a0f98e5087d5c55f6c90fea3a0130f8bcce942489d2b33ef279",
         intel: "30c6cc942bfb993d9f932a69335d79101d83e8122fa57d42f7bd1ace4c085821"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

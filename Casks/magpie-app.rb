cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4062"
  sha256 arm:   "f62a42174208b303573c349078edd73669aca38b97d9528d091b11cbad37c630",
         intel: "b103722053752cedf961951301eff16cdc91044691ba86f8804e40b7459dfc37"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

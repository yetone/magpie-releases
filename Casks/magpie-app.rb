cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4022"
  sha256 arm:   "3674833e8c586a6f2693a97684336a8130dcc339c761831f02639c487b63ede0",
         intel: "8c37188807cb231fee39691d27cb74377997a20a6d56693c69e06d3754853fea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4392"
  sha256 arm:   "c333a57e7b1e7402f1a78abb384979feabe27f0472e75d5de8ce774c9d15e155",
         intel: "c3876e3892e79ed797ad9dc1fab8b94ef6fe555b145ed9f41cec67cda7b758fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

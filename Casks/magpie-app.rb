cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3416"
  sha256 arm:   "9c1563d2c90ecb699e02b3a426de866bf013437c8954b87b1f8d40bd357640df",
         intel: "5ae7b3f91892e47f7b6a8adc35596e27ab2763c39f0c52a2628917f0e43ff44a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

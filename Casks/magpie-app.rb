cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2123"
  sha256 arm:   "b57598f4eabb875dfdcae438c3b29d845b89299e6d9f7f9fb5fbe1145683d47e",
         intel: "72ac89285b754b9e7ca225c7a32f919e7e711bf8c6a2f6ef477a0fdf3b8adf9e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

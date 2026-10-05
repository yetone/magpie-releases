cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1035"
  sha256 arm:   "37171801d90febf5a5a96d083552d5d888a6e2ef72c40d096ee9ec7b50d996f9",
         intel: "06633715a8dfcc3d1fde912a35ebd1ab2685ce7ab088033344dc9fa6be51cf4f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

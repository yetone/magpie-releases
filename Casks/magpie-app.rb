cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4046"
  sha256 arm:   "a071028a7305445ad247be3ed9036e8b4d2c23f9c4df320c3d61d353260b6a13",
         intel: "37cf007064f3358d78f242d318cb6b4408dc5ca3bfb6b60b9de7f24684cb71ef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

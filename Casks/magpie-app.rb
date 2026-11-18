cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4464"
  sha256 arm:   "b1f297c7e171c49fec1ff43803abac0c5ccd1e87d25f71ebcce5e54bed1da3cb",
         intel: "fe308fa1c65962427e3993504df0f6e2be76e2cb77c297ed5e2d07c6aec8b120"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

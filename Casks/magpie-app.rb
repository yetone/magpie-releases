cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1886"
  sha256 arm:   "d5e56a9753c3fece769419d264b43ca4ecda4566fb48b78451eb74ea0259ae1d",
         intel: "11a12c4962f9bc8ff256bf24a81e31b4371e0d79d205568d2301bdf77dfcb06b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

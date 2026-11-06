cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3167"
  sha256 arm:   "bf4a2c8b8c5492f83b32e76c006444c1325c925b3bc9c3ae25119f15cf8c2510",
         intel: "48718f0aee4d55e7c7ebf76093da8482b4f9df93c01c714eaae2c8f527c16149"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

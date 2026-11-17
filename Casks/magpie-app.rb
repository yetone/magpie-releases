cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4355"
  sha256 arm:   "c822e711ae2f180d5e1c2698a3341974520253c1a94a10932edf21c2c12c8770",
         intel: "ff6e3d0eb3d1e056a6e7464e3f41b7c2df2afb1bfb006fc701fbe837d0e52d18"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

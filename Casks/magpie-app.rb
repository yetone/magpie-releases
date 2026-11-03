cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2831"
  sha256 arm:   "034b48fe1eefa6d0024d1989dd14b23ae14fb680eaffb7b2b540c0423ce48461",
         intel: "ca9d4684e0efb97c61d5d1d47b9989e429bf315e547327307bf4add07a72cc0d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

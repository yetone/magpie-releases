cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3668"
  sha256 arm:   "dc340da32c5b7fc209ed6d0b32388dd26f1b2374f2d3f133b6969d41a3135bff",
         intel: "fe755b8bc5614f9a0b0eb148116806128439779f94ab025fb43254794aaf6ea0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

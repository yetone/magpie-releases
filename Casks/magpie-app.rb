cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3243"
  sha256 arm:   "eef2d96bf09b90682ade3f40d3116f80b6c1080215a8745d622110c639f7c8e4",
         intel: "d73bc3ea13b13d9b2b01cad094bbb16bc30e705f1ae23342938d20ca7f6c0e87"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

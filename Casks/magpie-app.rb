cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2623"
  sha256 arm:   "d3fa263599814feb1b1e1e071b4125499971b6d62cd30c82aee45637ca5d3638",
         intel: "d7e9e53bf1b8b581683c1504f317fcdd35124e63a009cf943db1bf078b5a44e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

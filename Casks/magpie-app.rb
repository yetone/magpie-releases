cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4379"
  sha256 arm:   "fe31759edd41d9638594e64c064fb44e2058c9d3060725309528f7725e793c93",
         intel: "85354a6bf913ca0e712b0d01b13c1661e689161c14377b4098f04bbf65c4835e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

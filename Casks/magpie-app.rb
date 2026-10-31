cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2286"
  sha256 arm:   "58b6b071aaba49a0acb5376bc9d5d2dc0e4f2c864e344dde6f334dd5f97b40b1",
         intel: "87262f3628081b2c8bfe581c1021b839f5eeadb774ae7102fc84070f15ea8e12"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

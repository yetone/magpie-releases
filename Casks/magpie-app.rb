cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2650"
  sha256 arm:   "f9255853266d495499efaf636ad2999bd6bf56f85a80e378e66893781e1b863a",
         intel: "b600ec5af5fc43ab53fdf43abb54616c46c6745324f9ec798d5834a3d8779fe5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

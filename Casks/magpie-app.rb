cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1062"
  sha256 arm:   "a1a97281c55d01705bfe6db03ee35d2d3aae3d86530c9824802b1ca38b362f09",
         intel: "91e99f3d1e366bdece1b85983e1ffd9915563fc2cc64f5ed362f2d4813bb940b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

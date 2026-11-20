cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4573"
  sha256 arm:   "f0ea63643f3a09623ee9b23861107142d1a36ab80b16ec0657fba7aebfdac82b",
         intel: "629da247c61a9151eebc8ba7be48dfd6b918693206e93e80474384c0cd5c6016"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4606"
  sha256 arm:   "8c31be96d6e7dcee13c0186436a081828e74552fdbecfdba0bbdf0d030896e07",
         intel: "cdcc826f624a87c7a00e116132c5dfe1194d29eec302ee5cf6204d833664d7a9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

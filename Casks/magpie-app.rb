cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2609"
  sha256 arm:   "938fba1de6666b60712ef3371f8a280ac2bcb6af1335b8b9d29523f462122268",
         intel: "66d53faf946323b78b661cf81c859ed960b68b0ab77772e2d76529f586e6eada"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

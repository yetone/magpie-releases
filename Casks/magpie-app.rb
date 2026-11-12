cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3889"
  sha256 arm:   "bda0a1992eec65b1e7d78c1381fd214c58fd4ce86809d498c7d883baf385718f",
         intel: "d8b012a446c57689477abeb60c9d995da592521fef3bb3c12762d7e81d9055b3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

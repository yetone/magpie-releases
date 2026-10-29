cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2086"
  sha256 arm:   "ac8e49876a4c02032db364511ceb35a23703b78935039b24b320ef041c08ff2c",
         intel: "b1de4567a3d85abcebd67a281b9174431349bcb8a87765a8a87060eb789c32fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

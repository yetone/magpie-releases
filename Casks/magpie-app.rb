cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4070"
  sha256 arm:   "66b58ac9a8dce35a42ca67377489de1dba90e3f02cedc78f8d532d46a6c70fe3",
         intel: "c9418d6bdfefff1cca0dde9cda89ac363fa7d2fff20174ffab4f7293aeee8fa0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

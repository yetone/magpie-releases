cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3396"
  sha256 arm:   "8f3ad9363b0966bf63f32a0e03331fb5b5cd779da542c09562c53add944e9e04",
         intel: "bd9d4b71f489a143e60f4989e79f7633b8ca06844965c357f146f66bb4f27c46"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

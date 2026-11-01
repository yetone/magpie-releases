cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2577"
  sha256 arm:   "979250d5a24379fb438e0b015b3cc2062ee8cb9f7848ae060c37239604a5efb9",
         intel: "146b7f5f956d750c5e70b504f5288149d5b02154205e06d81fc232198ddaf13b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

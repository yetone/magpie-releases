cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2183"
  sha256 arm:   "633e78add46a681fd001d9721bcfcc9ceb0081da19c68d6bd5e4a93432f0f3a7",
         intel: "31e940fc523e7d76f28e6b00cba7f578f6739cab832efe5ecfdb9d71f2a423ed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

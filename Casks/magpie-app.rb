cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1032"
  sha256 arm:   "3015f87621e84b59ad5a0efac7ef8ad7292c9a9196dc4fda0f107d150f6e1862",
         intel: "5bf771c03ef1597c84a8ee50facc2a41b5894eaaf799a70daf442a332c0009e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

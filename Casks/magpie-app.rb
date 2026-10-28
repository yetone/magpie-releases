cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1904"
  sha256 arm:   "86ccc6ac5380a23173da2a61a9f2b7b96cc5790c0d508c386665500e326e83cf",
         intel: "0af1ca8d0f7ccb272b6a96b594e7a8f34a2043250a0cc6f53573d88ca38c541b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

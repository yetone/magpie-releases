cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3001"
  sha256 arm:   "c111916892c7ca0234ed3ddb3017ee5ac723edd3536a42cdde430988ebe910e4",
         intel: "2b8865912515b05564cc7e68b2f8a27817c5c0ba3ca62b24aa4108938ad9abd4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2227"
  sha256 arm:   "b4023ab4f486bbd795149fd638e672b8c6576824fe3b18906cc9cd69ddbe62df",
         intel: "6fbfd3b158a0894f8e659af36d7ed88f8351d13ae9212c6592f6e2b1eb867926"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

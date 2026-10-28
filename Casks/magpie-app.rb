cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1842"
  sha256 arm:   "580cb9e262ef5ff9a43eb4ed47a5b0b35ec3baf8ba49baf351d1a002ff1c4914",
         intel: "a2e5bcf28c3a8ce440cc56a41b8c0907e12980a321ee49a42d5110da2700db7a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3694"
  sha256 arm:   "0bf2b38c15e80b086f02b355b3a5c32ac2e36eea52a31af8ee500255cd08280b",
         intel: "a0e8197e1f0d9c23e6c6ea4f63521adda75cd051a094129defe0987f72ba2d63"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

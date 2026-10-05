cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.977"
  sha256 arm:   "b81f503d8d60f8843d31fa06e35ed99c9a64d0223351342b5fab18d0170ae879",
         intel: "b540608ae6f8fe06c8148a7c575248bc37cbb0f7e977dae1210c55da2d01788c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

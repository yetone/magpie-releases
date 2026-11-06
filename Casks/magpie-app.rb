cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3168"
  sha256 arm:   "1f233905a10b6ddee22c430078ecd28673bd17545e6dea4a26ce2f7a3b5a15d2",
         intel: "9abf7d1e02188298435bdaf0b535013ac46beb64d3703f291785de55989aa893"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

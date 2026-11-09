cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3453"
  sha256 arm:   "66a95b6c8787d8ab3c7c6988b313abc7dcdcc00d717620858b24bc9e9bc846b0",
         intel: "dfbfb02f15ae08da0fbe58f10cea496536689cf60ccf374ae7bf3d0889bba3ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

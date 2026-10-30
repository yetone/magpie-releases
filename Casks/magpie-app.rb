cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2157"
  sha256 arm:   "b9b8c0eb7046d704eda14964fc15040bb292bd099a913a6564ae21e38ec494aa",
         intel: "f4f172d379467ee81652b6cac85b27a81f5c5d3588bcf0e6aa8ddf642b7632ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3885"
  sha256 arm:   "9e3ac91586905ddaba1cc341f9fbde657aa605f55005a1b469186cc59e0d849c",
         intel: "a1097a2d19bcb769cef0b756471f19712b754a0219615d86471a5ff7a54541d0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

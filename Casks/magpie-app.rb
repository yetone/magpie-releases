cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2395"
  sha256 arm:   "63d8910e4f4dc8a2ee12b715c63369863c6eb77f198b099577c969cfaa71aebd",
         intel: "13280cf483dbed5007154feabad91768e577ac47606469f53b5344bec84b96ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

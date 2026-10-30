cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2224"
  sha256 arm:   "7cf566738a4bc3f81a033597684ec63fba71a2c6281792c28837114012e5453b",
         intel: "17c2a4f94ef1af8848b5953e93fb23e1369d4f8c7a034c3f22129d345c61a941"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

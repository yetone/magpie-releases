cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2447"
  sha256 arm:   "a04df83da148b6183e68d87a5894d9fb14503bc774e4df247bc46f44f21dd7e9",
         intel: "a670032ee23f725091c2d5e19577cdb741fb86b4db2a4679e1e49d2dc86631b4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

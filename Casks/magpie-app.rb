cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4811"
  sha256 arm:   "bf986158f524dfbdb616b961e29793efbca029ade814aa0e6693b6855ec3e6d7",
         intel: "922ac9c3d9a62a7cf0ac9af014a79aa6bc15db19efe56c87a5b1d0a623cb59a5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

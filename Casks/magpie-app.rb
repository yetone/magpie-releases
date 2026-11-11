cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3711"
  sha256 arm:   "ebc3ef53dcc73628bb390faab92a93196e1665ff8e13487dc8ab9450f6e89b23",
         intel: "d0107c02d52c2a253074ee9d21397efe9a407ef9c9f0619e6e8d0f645bf0d487"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

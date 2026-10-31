cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2386"
  sha256 arm:   "7374cace450521032a06dca49531c3998738758a48763cc41a70d3b9aa04b454",
         intel: "80aa1ef9355933cb553fc863f202f3323d63d6650196d3d329b49c74e603416c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

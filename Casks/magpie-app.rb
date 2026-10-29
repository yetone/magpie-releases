cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1990"
  sha256 arm:   "adfda5169f98df4d0ea4fa91d1556a2a80277276b39a89c49279033d6003af43",
         intel: "4ad6f87172c0e95be759cac6d45ad623b340df082c7e2127ec475a71af5c28d3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

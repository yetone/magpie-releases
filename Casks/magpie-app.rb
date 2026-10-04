cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.904"
  sha256 arm:   "aeeaf67c45298ee4c3d3ca49ae91675684a42e389af91e76640bc9f3aabcbe9f",
         intel: "131116d0e17debac07470fa952f90fcd97fabc809bf93e7627c5a85dbdc8735f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

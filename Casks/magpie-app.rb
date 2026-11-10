cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3616"
  sha256 arm:   "64a98ca72d7bb7ab05ddfe562d337a3c2e2bf317412043ea51297df3d1a6f829",
         intel: "919ab9287de093fb85a2ba0a0ad46c6bf43efbbf68a6aaeb81562b9692434b8a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

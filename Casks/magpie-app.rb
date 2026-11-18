cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4454"
  sha256 arm:   "66af682e646538f4ba776fdaae5334f334c323ab56da898a35761f28cc47c9a2",
         intel: "4832a34188ac03eba503ae25412f7cb727dc708ff53cdaf718d8cd3b24bb0090"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

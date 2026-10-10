cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1159"
  sha256 arm:   "a0e059997d01f9b7e30a91e6cf41296208fb0d48ef10fdb92b260c80a2780524",
         intel: "421135d8f94dbb3db306d1128932d9763b3f26430890102cf4ee12d8cb32a5e9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
